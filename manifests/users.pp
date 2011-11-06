class drizzle_project::users {
  include user::virtual

  @user::virtual::localuser { 'mordred':
    realname => 'Monty Taylor',
    sshkeys  => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAyxfIpVCvZyM8BIy7r7WOSIG6Scxq4afean1Pc/bej5ZWHXCu1QnhGbI7rW3sWciEhi375ILejfODl2TkBpfdJe/DL205lLkTxAa+FUqcZ5Ymwe+jBgCH5XayzyhRPFFLn07IfA/BDAjGPqFLvq6dCEHVNJIui6oEW7OUf6a3376YF55r9bw/8Ct00F9N7zrISeSSeZXbNR+dEqcsBEKBqvZGcLtM4jzDzNXw1ITPPMGaoEIIszLpkkJcy8u/13GIrbAwNrB2wjl6Mzj+N9nTsB4rFtxRXp31ZbytCH5G9CL/mFard7yi8NLVEJPZJvAifNVhooxGN06uAiTFE8EsuQ== mtaylor@qualinost\n",
  }

  @user::virtual::localuser { 'krow':
    realname => 'Brian Aker',
    sshkeys  => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrlaxAaiJ+UxPEsTw3dVDF/f1Vs6ag8WP/CL1QBb71R3wSpqqzyjVQqtuqOxTwgDveIk4A1KrZmVHNdAGhOo8VIWRD66slJE7tgDG8XIDXrYDGjgMKthyqjuItWW0lEli+uq8xr0yaMrZysEYFQX1qdtxGHkuFLeCXHv257sk8AVFB0B5a8W7YqrEUvZgIbzIV0fXdqplXn5dn3DFrmM1jN11MMGRSdNE0gvW/vS7zlXk244D6tXJOSIDFmQgTXPgMSqza6DWlXdjeFm3z/bVZVSPLsYfWm/mQDXwds7caOnV0WWVJIxPp9NRNsHZpmPDNYEeXOjfvROx8hDe3Rmzx brian.aker@hp.com\n ssh-dss AAAAB3NzaC1kc3MAAACBAOXNROQG2KuhPGivdQGXf38oQxGkMU5n7SmkUBp+/r/1KKjx2EE/qAW0pxNhqssJTAk71c3uoXlIQu37tZEsqiG/3jCwlO5drATsulNsZAueJ1OMpVgx7Fqp++ABEfAHRGMR+pgoZGtqKBoxzEosjH3/Cd3YI+2S9iGAKg8X7+i1AAAAFQDszwlv4YkTmnjVE86aL1ji6AdyaQAAAIANXtU/Xm4pbMPeUm4bzCqlcl/l2DqJHa2qGpHDLqFHWpDGjfHJteByAczNcqYL/iFQrx5zZbdVAoBmO+GHD81pfaWOIBkhihwxpZ1ZPQrqsFgi7l20RshSidTHaj4jqnyBvPjdtA8TZPjkkhdDt9nUQuSFMeAz32ziFhMlaYkG8gAAAIEAxE5+NMytNk8KJ/55Fns9h4+xN32B8fafDvYBLYX5L67VRAQ35gtwZArYTDD1LkUTxZK31vIJPt5j2UiS6jbsTFJ60zD9b1JXv/+Sc7SLNd0X2UA2c6ZlnP8BF6I0dAn3YejjD9/tWDgRrfVtbEARHHhndxPhmQB4h1OnyFfjBY8= brian@gir.tangent.org\n",
  }

  @user::virtual::localuser { 'fallenpegasus':
    realname => 'Mark Atwood',
    sshkeys  => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAo5CQIiX0UWVVxkGaJ6pTP4dTwxmkUcpvvapTKshIRXuc4teP12rWOrikahQu+TJzPgKU3PNZnUV5ItFJhc8BCBP3D7xn1C7waiAquO3T4FlbNa6UwrLJIQPjfZXs6/57jCpDPgiCcqM+rjpB1VNn00lX4LEblghP7+g03ebHNmmCmwmbjahJU850b6HdlIX7e/zAx1f3zGBFC0MTkUIt7zUZ1Gvo6rJOy/3PEbL5de5HCJkjmTqDTotNxDm7LUUzTNBbq6AcEXqWLxiHqNlb8+JXy+j7jmfmstBA3ZM+kORuhBBtGmXfkzQ3ZHmbC+jMh3mKS6Dnt/t0ou7irDhd7Q== me@mark.atwood.name\n",
  }

}
