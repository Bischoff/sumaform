{% if 'server' in grains.get('roles') and grains.get('server_registration_code') %}

{% if '4.2' in grains['product_version'] %}
register_suse_manager_server_with_scc:
   cmd.run:
     - name: SUSEConnect --url https://scc.suse.com -r {{ grains.get("server_registration_code") }} -p SUSE-Manager-Server/4.2/{{ grains.get("cpuarch") }}
add_sle_module_basesystem:
   cmd.run:
     - name: SUSEConnect -p sle-module-basesystem/15.3/{{ grains.get("cpuarch") }}
add_sle_module_python2:
   cmd.run:
     - name: SUSEConnect -p sle-module-python2/15.3/{{ grains.get("cpuarch") }}
add_sle_module_server_application:
   cmd.run:
     - name: SUSEConnect -p sle-module-server-applications/15.3/{{ grains.get("cpuarch") }}
add_sle_module_web_scripting:
   cmd.run:
     - name: SUSEConnect -p sle-module-web-scripting/15.3/{{ grains.get("cpuarch") }}
add_sle_module_suse_manager_server:
   cmd.run:
     - name: SUSEConnect -p sle-module-suse-manager-server/4.2/{{ grains.get("cpuarch") }}

{% endif %}

{% if '4.3' in grains['product_version'] %}
register_suse_manager_server_with_scc:
   cmd.run:
     - name: SUSEConnect --url https://scc.suse.com -r {{ grains.get("server_registration_code") }} -p SUSE-Manager-Server/4.3/{{ grains.get("cpuarch") }}
add_sle_module_basesystem:
   cmd.run:
     - name: SUSEConnect -p sle-module-basesystem/15.4/{{ grains.get("cpuarch") }}
add_sle_module_server_application:
   cmd.run:
     - name: SUSEConnect -p sle-module-server-applications/15.4/{{ grains.get("cpuarch") }}
add_sle_module_web_scripting:
   cmd.run:
     - name: SUSEConnect -p sle-module-web-scripting/15.4/{{ grains.get("cpuarch") }}
add_sle_module_suse_manager_server:
   cmd.run:
     - name: SUSEConnect -p sle-module-suse-manager-server/4.3/{{ grains.get("cpuarch") }}

{% endif %}

{% endif %}
