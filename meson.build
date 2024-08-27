# Specify the project name, language (vala), and version
project('myprogram', 'vala', version: '0.1.0')

# Define the list of source files
sources = files('src/helloworld.vala', 'src/myclass.vala')  # Add all Vala source files here

# Define the list of dependencies (packages)
dependencies = [
  dependency('gtk4')
]

# Create the executable
executable('myprogram',
  sources,
  dependencies: dependencies,
  install: true
)
