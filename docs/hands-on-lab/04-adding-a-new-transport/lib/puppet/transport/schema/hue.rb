require 'puppet/resource_api'

Puppet::ResourceApi.register_transport(
  name: 'hue',
  desc: <<-EOS,
      This transport provides Puppet with the capability to connect to hue targets.
    EOS
  features: [],
  connection_info: {
    host: {
      type: 'String',
      desc: 'The hostname or IP address to connect to for this target.',
    },
    port: {
      type: 'Optional[Integer]',
      desc: 'The port to connect to. Defaults to ...',
    },
    user: {
      type: 'String',
      desc: 'The name of the user to authenticate as.',
    },
    password: {
      type:      'String',
      desc:      'The password for the user.',
      sensitive: true,
    },
  },
)
