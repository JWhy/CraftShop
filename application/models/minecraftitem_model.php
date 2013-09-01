<?php

class Minecraftitem_model extends My_Model {
    protected $return_type = 'array';
    
    private $default_inavailable = array('0-0', '383-0');
    
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