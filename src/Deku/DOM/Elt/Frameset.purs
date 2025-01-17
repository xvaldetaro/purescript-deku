module Deku.DOM.Elt.Frameset where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Frameset_

frameset
  :: forall lock payload
   . Event (Attribute Frameset_)
  -> Array (Domable lock payload)
  -> Domable lock payload
frameset attributes kids = Element' (elementify "frameset" attributes (fixed kids))

frameset_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
frameset_ = frameset empty

