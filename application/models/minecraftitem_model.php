<?php

class Minecraftitem_model extends My_Model {
    protected $return_type = 'array';
    
    public function apply_update($items){
      $updated = 0;
      
      foreach($items as $item){
        $data = array(
        	'name' => $item->name,
            'item_id' => $item->id,
            'item_damage' => $item->data_value 
        );
        
        $where = $data;
        unset($where['name']);
        if(sizeof($this->get_by($where)) == 0){
          $this->insert($data);
          $updated++;
        }
      }
      return($updated);
    }
    
}

?>