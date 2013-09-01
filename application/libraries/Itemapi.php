<?php

class Itemapi {
  
  private $params = array();
  
  public function __construct($params) {
    $this->params = $params;
  }
  
  public function getList($info = false){
    $urls = $this->params['urls'];
    $ch = curl_init($urls['list']);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $json = curl_exec($ch);
    $status = curl_getinfo($ch);
    if(200 > $status['http_code'] || $status['http_code'] >= 300){
      if(!$info) return false;
      
      $retrn = new stdClass();
      $retrn->code = $status['http_code'];
      return($retrn);
    }
    
    $data = json_decode($json);
    $retrn = $data;
    if($info){
      $retrn = new stdClass();
      $retrn->size = $status['download_content_length'];
      $retrn->data = $data;
    }

    curl_close($ch);
 
    return($retrn);
  }
  
  public function updateImages($img_url, $dest_dir){
    $this->CI =& get_instance();
    $this->CI->load->model('minecraftitem_model', 'mcitems');
    
    if(!file_exists($dest_dir)) mkdir($dest_dir, 755, true);
    $items = $this->CI->mcitems->get_all();
    $status['updated'] = 0;
    $status['skipped'] = 0;
    
    foreach($items as $item){
      $itemid_string = $item['item_id'] . '-' . $item['item_damage'];
      $get_url = sprintf($img_url, $item['item_id'], $item['item_damage']);
      
      $img_dest = $dest_dir . $itemid_string . '.png';
      
      if(!file_exists($img_dest)){
        file_put_contents($img_dest, file_get_contents($get_url));
        $status['updated']++;
      }else{
        $status['skipped']++;
      }
    }
    return($status);
  }
  
  public function getUrls(){
    return($this->params['urls']);
  }

}

?>