# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.plural(/^(.*)tud$/i, '\1tudes')       # Solicitud - Solicitudes
  inflect.singular(/^(.*)tudes$/i, '\1tud')
  inflect.plural(/^(.*)ad$/i, '\1ades')         # Ciudad - Ciudades
  inflect.singular(/^(.*)dades$/i, '\1dad')
  inflect.plural(/^(.*)on$/i, '\1ones')         # Profesión - Profesiones
  inflect.singular(/^(.*)ones$/i, '\1on')
  inflect.plural(/^(.*)or$/i, '\1ores')         # Profesor - Profesores
  inflect.singular(/^(.*)ores$/i, '\1or')
  inflect.plural(/^(.*)ar$/i, '\1ares')         # Lugar - Lugares
  inflect.singular(/^(.*)ares$/i, '\1ar')
  inflect.plural(/^(.*[aeiou])l$/i, '\1les')    # Plural - Plurales
  inflect.singular(/^(.*[aeiou])les$/i, '\1l')
end

ActiveSupport::Inflector.inflections(:es) do |inflect|
  inflect.plural(/^(.*)tud$/i, '\1tudes')       # Solicitud - Solicitudes
  inflect.singular(/^(.*)tudes$/i, '\1tud')
  inflect.plural(/^(.*)ad$/i, '\1ades')         # Ciudad - Ciudades
  inflect.singular(/^(.*)dades$/i, '\1dad')
  inflect.plural(/^(.*)on$/i, '\1ones')         # Profesión - Profesiones
  inflect.singular(/^(.*)ones$/i, '\1on')
  inflect.plural(/^(.*)or$/i, '\1ores')         # Profesor - Profesores
  inflect.singular(/^(.*)ores$/i, '\1or')
  inflect.plural(/^(.*)ar$/i, '\1ares')         # Lugar - Lugares
  inflect.singular(/^(.*)ares$/i, '\1ar')
  inflect.plural(/^(.*[aeiou])l$/i, '\1les')    # Plural - Plurales
  inflect.singular(/^(.*[aeiou])les$/i, '\1l')
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
