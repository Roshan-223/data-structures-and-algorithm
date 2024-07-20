// class TreeNode {
//   int val;
//   TreeNode?left;
//   TreeNode?right;
//   TreeNode(this.val, {this.left, this.right});
// }
// bool isValidBST(TreeNode root) {
//   var prevValue = null;
//   return inOrderTraversal(root, (value) {
//     if (prevValue != null && value <= prevValue) {
//       return false;
//     }
//     prevValue = value;
//     return true;
//   });
// }
// bool inOrderTraversal(TreeNode?node, bool Function(int value) visitor) {
//   if (node == null) {
//     return true;
//   }

//   if (!inOrderTraversal(node.left, visitor)) {
//     return false;
//   }

//   if (!visitor(node.val)) {
//     return false;
//   }

//   return inOrderTraversal(node.right, visitor);
// }
// void main() {
//   // Create the binary search tree
//   TreeNode node2 = TreeNode(2);
//   TreeNode node4 = TreeNode(4);
//   TreeNode node3 = TreeNode(3, left: node2, right: node4);
//   TreeNode node7 = TreeNode(7);
//   TreeNode root = TreeNode(5, left: node3, right: node7);

//   // Validate the binary search tree
//   bool isValid = isValidBST(root);

//   // Output the result
//   print('Is the binary search tree valid? $isValid');
// }

// class TreeNode {
//   int val;
//   TreeNode? left;
//   TreeNode? right;

//   TreeNode(this.val);
// }
// bool isValidBST(TreeNode? root) {
//   return _isValidBSTHelper(root, null,null);
// }

// bool _isValidBSTHelper(TreeNode? node, int? min, int? max) {
//   if (node == null) {
//     return true;
//   }

//   if ((min != null && node.val <= min) || (max != null && node.val >= max)) {
//     return false;
//   }

//   return _isValidBSTHelper(node.left, min, node.val) &&
//       _isValidBSTHelper(node.right, node.val, max);
// }
// void main() {
//   // Construct a sample binary tree
//   var root = TreeNode(2);
//   root.left = TreeNode(1);
//   root.right = TreeNode(3);

//   // Validate the binary tree as a BST
//   bool isValid = isValidBST(root);

//   print('Is the binary tree a valid BST? $isValid'); // Output: Is the binary tree a valid BST? true
// }



// class TreeNode{
//   int val;
//   TreeNode?left;
//   TreeNode?right;

//   TreeNode(this.val);
// }
// bool isValidBst(TreeNode?root){
// return _isValidBStRec(root,null,null);
// }
// bool _isValidBStRec(TreeNode?node,int?min,int?max){
//   if(node==null){
//     return true;
//   }
//   if((min!=null && node.val<=min)||(max!=null && node.val>=max)){
//     return false;
//   }
//   return _isValidBStRec(node.left, min, node.val)&&_isValidBStRec(node.right, node.val, max);
// }
// void main(){
//   var root=TreeNode(2);
//   root.left=TreeNode(1);
//   root.right=TreeNode(3);

// bool isValid=isValidBst(root);
// print("binary tree is a valid Bst :$isValid");
// }

