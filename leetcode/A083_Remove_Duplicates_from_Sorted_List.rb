# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    node = head
    while node
        tail = node.next
        while tail && tail.val == node.val
            tail = tail.next
        end
        node.next = tail
        node = tail
    end
    
    head
end