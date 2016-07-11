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
def swap_pairs(head)
    unless head; return head; end
    
    dummy = ListNode.new(0)
    dummy.next = head
    pre = dummy
    
    while pre.next && pre.next.next
        one = pre.next
        two = pre.next.next
        one.next = two.next
        two.next = one
        pre.next = two
        pre = one
    end
    
    return dummy.next
end
