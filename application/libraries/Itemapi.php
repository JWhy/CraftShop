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
  
  public function updateImages(){
    
  }
  
  public function getUrls(){
    return($this->params['urls']);
  }

}

?>