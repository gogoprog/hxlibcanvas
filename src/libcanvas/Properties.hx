package libcanvas;

import haxe.macro.Context;
import haxe.macro.Expr;

class Properties
{
    macro static public function build():Array<Field>
    {
        var fields = Context.getBuildFields();
        var newFields = new Array<Field>();
        var pos = Context.currentPos();

        for(field in fields)
        {
            switch(field.kind)
            {
                case FProp(get, set, t, e):
                {
                    switch(t)
                    {
                        case TPath(p):
                        {
                            var fieldName = field.name;
                            var type = p.name;
                            var pascalName = fieldName.substr(0,1).toUpperCase() + fieldName.substr(1);

                            var getterFunc:Function = {
                                expr: null,
                                ret: t,
                                args:[]
                            };

                            var getterField:Field = {
                                name: "get_" + fieldName,
                                access: [Access.APublic],
                                kind: FieldType.FFun(getterFunc),
                                pos: pos,
                                meta: [{pos: pos, name:":native", params:[macro $v{"get" + pascalName}]}]
                            };

                             newFields.push(getterField);

                            var setterFunc:Function = {
                                expr: null,
                                ret: t,
                                args:[{type:t, name:"value"}]
                            };

                            var setterField:Field = {
                                name: "set_" + fieldName,
                                access: [Access.APublic],
                                kind: FieldType.FFun(setterFunc),
                                pos: pos,
                                meta: [{pos: pos, name:":native", params:[macro $v{"set" + pascalName}]}]
                            };

                             newFields.push(setterField);
                        }
                        default:
                    }
                }
                default:
            }
        }

        return fields.concat(newFields);
    }
}

