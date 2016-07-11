# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    unless l1; return l2; end
    unless l2; return l1; end
    
    dummy = ListNode.new(0)
    tail = dummy
    
    while l1 && l2
        if l1.val <= l2.val
            tail.next = l1
            l1 = l1.next
        else
            tail.next = l2
            l2 = l2.next
        end
        tail = tail.next
    end
    
    if l1; tail.next = l1; end
    if l2; tail.next = l2; end
    
    return dummy.next
end
