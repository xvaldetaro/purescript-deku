module Deku.DOM.Elt.Colgroup where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Colgroup_

colgroup
  :: forall lock payload
   . AnEvent M (Attribute Colgroup_)
  -> Array (Domable lock payload)
  -> Domable lock payload
colgroup attributes kids = Element'
  (elementify "colgroup" attributes (fixed kids))

colgroup_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
colgroup_ = colgroup empty
