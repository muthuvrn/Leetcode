# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        dummy = ListNode(0)  # Dummy node to simplify the process
        current = dummy
        carry = 0

        while l1 or l2 or carry:
            # Get the values of the current digits (or 0 if the list is exhausted)
            val1 = l1.val if l1 else 0
            val2 = l2.val if l2 else 0

            # Compute the sum of the current digits and the carry
            total = val1 + val2 + carry

            # Update the carry for the next iteration
            carry = total // 10

            # Create a new node with the digit value (total % 10)
            current.next = ListNode(total % 10)

            # Move to the next nodes
            current = current.next
            l1 = l1.next if l1 else None
            l2 = l2.next if l2 else None

        return dummy.next
