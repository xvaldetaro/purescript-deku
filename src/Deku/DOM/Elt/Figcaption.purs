module Deku.DOM.Elt.Figcaption where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable, M)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (AnEvent)

data Figcaption_

figcaption
  :: forall lock payload
   . AnEvent M (Attribute Figcaption_)
  -> Array (Domable lock payload)
  -> Domable lock payload
figcaption attributes kids = Element'
  (elementify "figcaption" attributes (fixed kids))

figcaption_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
figcaption_ = figcaption empty
