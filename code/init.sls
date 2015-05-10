'''
this is a comment

.. code-block:: yaml

    fred:
      user.present:
        - fullname: Fred Jones
        - shell: /bin/zsh
        - home: /home/fred


'''


include:
    - php
    - php.cli
    - php.curl


get-composer:
  cmd.run:
    - name: 'CURL=`which curl`; $CURL -sS https://getcomposer.org/installer | php'
    - unless: test -f /usr/local/bin/composer
    - cwd: /root/
    - require:
      - sls: php.cli
      - sls: php.curl


install-composer:
  cmd.wait:
    - name: mv /root/composer.phar /usr/local/bin/composer
    - cwd: /root/
    - watch:
      - cmd: get-composer

