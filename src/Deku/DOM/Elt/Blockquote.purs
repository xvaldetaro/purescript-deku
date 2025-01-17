module Deku.DOM.Elt.Blockquote where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Deku.Core (Domable)
import Bolson.Core (Entity(..), fixed)
import FRP.Event (Event)


data Blockquote_

blockquote
  :: forall lock payload
   . Event (Attribute Blockquote_)
  -> Array (Domable lock payload)
  -> Domable lock payload
blockquote attributes kids = Element' (elementify "blockquote" attributes (fixed kids))

blockquote_
  :: forall lock payload
   . Array (Domable lock payload)
  -> Domable lock payload
blockquote_ = blockquote empty

