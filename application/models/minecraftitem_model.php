<?php

class Minecraftitem_model extends My_Model {
    
    private $default_inavailable = array('0-0', '383-0');
    
    public function get_all($show_hidden = false){
      if($show_hidden){
        return(parent::get_all());
      }else{
        $this->_set_where(array('available = 1'));
        return(parent::get_all());
      }
    }
    
    public function apply_update($items){
      $status['updated'] = 0;
      $status['skipped'] = 0;
      
      foreach($items as $item){
        ($this->update_item($item)) ? $status['updated']++ : $status['skipped']++;
        foreach($item->data_values as $subitem){
          ($this->update_item($subitem)) ? $status['updated']++ : $status['skipped']++;
        }
      }
      return($status);
    }
    
    public function get_item($item_id, $damage){
      $item = $this->get_by(array(
      	'item_id' => $item_id,
        'item_damage' => $damage
      ));
      
      return (sizeof($item) != 0)? $item : false;
    }
    
    private function update_item($item){
      $data = array(
          'name' => $item->name,
          'item_id' => $item->id,
          'item_damage' => $item->data_value
      );
      
      $where = $data;
      unset($where['name']);
      
      $match = $this->get_by($where);
      
      if(sizeof($match) == 0){
        if(in_array($data['item_id'] . '-' .  $data['item_damage'], $this->default_inavailable)){
          $data['available'] = 0;
        }
        $this->insert($data);
        return(true);
      }
      return(false);
    }
    
}

?>
