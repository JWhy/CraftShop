<?php

$config['iconomy'] = array(
	'currency' => '$%u'
);

$config['jsonapi'] = array(
    
    // JSONAPI connection settings
    'host' => 'localhost',
    'port' => '20059',
    'username' => 'craftshop',
    'password' => '',
    'salt' => ''
)
;

$config['itemapi'] = array(
    
    'local_img_path' => 'assets/items/',
    'urls' => array(
        'image' => 'http://static.adminiumapp.com/data_values/images/%1$u-%2$u.png',
        'local_image' => 'assets/items/%1$u-%2$u.png',
        'list' => 'http://static.adminiumapp.com/data_values/cache.json'
    )
    
);
