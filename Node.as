package  {
	
	public class Node {  // doubly linked list

		public var node_data:*;
		public var next_node:Node;
		public var previous_node:Node;
		public var isHead;
		
		public function Node(node_content:*, head:Boolean = false) {
			node_data=node_content;
			next_node=null;
			previous_node = null;
			isHead = head;
		}
		public function get_node_data():* {
			return node_data;
		}
		public function insert_prev(n:Node):void {
			n.next_node=this;
			this.previous_node = n;
		}
		public function insert_next(n:Node):void {
			next_node=n;
			n.previous_node = this;
			//if(n.next_node == null){
				var cursor:Node = n;
				while (cursor.previous_node != null) {
					trace('push ' + cursor.previous_node.isHead);
					if (cursor.previous_node.isHead){
						n.next_node = cursor.previous_node;
						
					} 
						cursor = cursor.previous_node;
						trace('lookback');
					
				}
			//}
		}
		public function get_next_node():Node {
			return next_node;
		}
		
			public function get_previous_node():Node {
			return previous_node;
		}
	}

	
	
}
