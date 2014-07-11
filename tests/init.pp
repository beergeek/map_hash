  $test_hash = {
    'finch' => {  'user_id'   => '5000',
                  'group_id'  => '5000',
                  'path'      => '/home/finch',
                  'include'   => true,
                  'shell'     => '/bin/bash',
                },
    'gary'  => {  'user_id'   => '5001',
                  'group_id'  => '5001',
                  'path'      => '/home/gary',
                  'include'   => true,
                  'shell'     => '/bin/bash',
                },
    'amanda' => { 'user_id'   => '5002',
                  'group_id'  => '5002',
                  'path'      => '/home/amanda',
                  'include'   => false,
                  'shell'     => '/bin/bash',
                },
  }

  $rename_hash = {'user_id' => 'uid','group_id' => 'gid', 'path' => 'home','shell' => 'shell'}

  $fixed_hash = map_hash($test_hash, $rename_hash, 'include','name')

  create_resources(user, $fixed_hash)
