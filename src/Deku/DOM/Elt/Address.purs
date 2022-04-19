module Deku.DOM.Elt.Address where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Element)
import FRP.Event (class IsEvent)

data Address_

address
  :: forall event payload
   . IsEvent event
  => event (Attribute Address_)
  -> Array (Element event payload)
  -> Element event payload
address = elementify "address"

address_
  :: forall event payload
   . IsEvent event
  => Array (Element event payload)
  -> Element event payload
address_ = address empty
