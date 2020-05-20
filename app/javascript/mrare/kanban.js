//
//
// kanban.js
//
// Initializes the kanban plugin .
//

import Sortable from '@shopify/draggable/lib/sortable.js';
import SwapAnimation from '@shopify/draggable/lib/plugins/swap-animation.js'

const mrKanban = {
  sortableKanbanLists: new Sortable(document.querySelectorAll('div.kanban-board'), {
    draggable: '.kanban-col:not(:last-child)',
    handle: '.card-list-header',
  }),

  sortableKanbanCards: new Sortable(document.querySelectorAll('.kanban-col .card-list-body'), {
    plugins: [SwapAnimation],
    draggable: '.card-kanban',
    handle: '.card-kanban',
    appendTo: 'body',
  }),
};

export default mrKanban;
