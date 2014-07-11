<p>This function renames keys in a hash and returns a hash of with only the new keys.  The function can
   also create an additional key that uses the title if the nested hash as the value.</p>

<p>The first argument is the nested hash to manipulate
  The second argument is a hash of how to remap the keys and the keys that will be included in the resulting hash
  The third argument is a string of a key used to determine which hashes to include in the result. The value of
  the key must be a boolean value (optional)
  The fourth argument is a new key name which will be created in every hash whose value will be the hash title (optional)</p>

<p>$test<em>hash = {
    &#39;finch&#39; =&gt; {  &#39;user</em>id&#39;   =&gt; &#39;5000&#39;,
                  &#39;group<em>id&#39;  =&gt; &#39;5000&#39;,
                  &#39;path&#39;      =&gt; &#39;/home/finch&#39;,
                  &#39;include&#39;   =&gt; true,
                  &#39;shell&#39;     =&gt; &#39;/bin/bash&#39;,
                },
    &#39;gary&#39;  =&gt; {  &#39;user</em>id&#39;   =&gt; &#39;5001&#39;,
                  &#39;group<em>id&#39;  =&gt; &#39;5001&#39;,
                  &#39;path&#39;      =&gt; &#39;/home/gary&#39;,
                  &#39;include&#39;   =&gt; true,
                  &#39;shell&#39;     =&gt; &#39;/bin/bash&#39;,
                },
    &#39;amanda&#39; =&gt; { &#39;user</em>id&#39;   =&gt; &#39;5002&#39;,
                  &#39;group_id&#39;  =&gt; &#39;5002&#39;,
                  &#39;path&#39;      =&gt; &#39;/home/amanda&#39;,
                  &#39;include&#39;   =&gt; false,
                  &#39;shell&#39;     =&gt; &#39;/bin/bash&#39;,
                },
  }</p>

<p>$rename<em>hash = {&#39;user</em>id&#39; =&gt; &#39;uid&#39;,&#39;group_id&#39; =&gt; &#39;gid&#39;, &#39;path&#39; =&gt; &#39;homedir&#39;,&#39;shell&#39; =&gt; &#39;shell&#39;}</p>

<p>$fixed<em>hash = map</em>hash($test<em>hash, $rename</em>hash, &#39;include&#39;,&#39;name&#39;)</p>

<p>result:
  {
    &#39;finch&#39; =&gt; {  &#39;uid&#39;   =&gt; &#39;5000&#39;,
                  &#39;gid&#39;   =&gt; &#39;5000&#39;,
                  &#39;homedir&#39; =&gt; &#39;/home/finch&#39;,
               },
    &#39;gary&#39;  =&gt; {  &#39;uid&#39;   =&gt; &#39;5001&#39;,
                  &#39;gid&#39;   =&gt; &#39;5001&#39;,
                  &#39;homedir&#39; =&gt; &#39;/home/gary&#39;,
               },
  }</p>
