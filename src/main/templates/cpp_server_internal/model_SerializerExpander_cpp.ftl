SerializerExpander${module.name?cap_first}.cpp
/* Autogenerated with kurento-module-creator */

<#list module.remoteClasses as remoteClass>
#include "${remoteClass.name}Impl.hpp"
</#list>
<#list module.events as event>
#include "${event.name}.hpp"
</#list>
<#list module.complexTypes as complexType>
#include "${complexType.name}.hpp"
</#list>

#include <jsonrpc/JsonSerializer.hpp>

namespace kurento
{

void dummy${module.name?cap_first} ()
{
<#list module.remoteClasses as remoteClass>
  {
    JsonSerializer s (true);
    std::shared_ptr<${remoteClass.name}> object;

    s.SerializeNVP (object);
  }
</#list>
<#list module.events as event>
  {
    JsonSerializer s (true);
    std::shared_ptr<${event.name}> object;

    s.SerializeNVP (object);
  }
</#list>
<#list module.complexTypes as complexType>
  {
    JsonSerializer s (true);
    std::shared_ptr<${complexType.name}> object;

    s.SerializeNVP (object);
  }
</#list>
}

} /* kurento */
