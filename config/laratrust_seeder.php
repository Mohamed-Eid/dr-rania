<?php

return [
    'role_structure' => [
        'super_admin' => [
            'users'            => 'c,r,u,d',
            'categories'       => 'c,r,u,d',
            'contact_messages' => 'r,d',
            'images'           => 'c,r,u,d',
            'pages'            => 'c,r,u,d',
            'posts'            => 'c,r,u,d',
            'settings'         => 'c,r,u,d',
            'question_answers' => 'c,r,u,d',
            'surgeries'        => 'c,r,u,d',
            'videos'           => 'c,r,u,d',            
        ],

        'admin' => [],
    ],
    'permissions_map' => [
        'c' => 'create',
        'r' => 'read',
        'u' => 'update',
        'd' => 'delete'
    ]
];
