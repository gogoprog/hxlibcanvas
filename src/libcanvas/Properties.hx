package libcanvas;

import haxe.macro.Context;
import haxe.macro.Expr;

class Properties
{
    macro static public function build():Array<Field>
    {
        var fields = Context.getBuildFields();
        for(f in fields) {
            trace(f);
        }
        return fields;
    }
}

