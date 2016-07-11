# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    unless head; return head; end
    
    dummy = ListNode.new(0)
    dummy.next = head
    
    p1 = dummy
    n.times do
        p1 = p1.next
    end
    
    p2 = dummy
    while p1.next
        p1 = p1.next
        p2 = p2.next
    end
    
    p2.next = p2.next.next
    
    return dummy.next
end
