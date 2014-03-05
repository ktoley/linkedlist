package 
{

	import flash.display.MovieClip;


	public class main extends MovieClip
	{


		public function main()
		{
			// constructor code
			datatype();

		}

		public function datatype()
		{
			var n1:Node = new Node(12,true);
			var n2:Node = new Node(99);
			var n3:Node = new Node(37);
			//n2.insert_prev(n1);
			n1.insert_next(n2);
			n2.insert_next(n3);
			//trace(n1.get_next_node().get_next_node().get_node_data());
			var counter = 0;
			var cursor:Node = n1;
			while (cursor != null && counter < 5)
			{
				trace(cursor.get_node_data() + '  ' + cursor.isHead);
				if (cursor.isHead)
				{

					counter++;
					trace('counter ' + counter);
				}
				cursor = cursor.get_next_node();

			}
		}
		
		
		
		
		
		
	}


}