map_hash
========
This function renames keys in a hash and returns a hash of with only the new keys.  The function can
   also create an additional key that uses the title if the nested hash as the value.

  The first argument is the nested hash to manipulate
  The second argument is a hash of how to remap the keys and the keys that will be included in the resulting hash
  The third argument is a string of a key used to determine which hashes to include in the result. The value of
  the key must be a boolean value (optional)
  The fourth argument is a new key name which will be created in every hash whose value will be the hash title (optional)

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

  $rename_hash = {'user_id' => 'uid','group_id' => 'gid', 'path' => 'homedir','shell' => 'shell'}

  $fixed_hash = map_hash($test_hash, $rename_hash, 'include','name')

  result:
  {
    'finch' => {  'uid'   => '5000',
                  'gid'   => '5000',
                  'homedir' => '/home/finch',
               },
    'gary'  => {  'uid'   => '5001',
                  'gid'   => '5001',
                  'homedir' => '/home/gary',
               },
  }
