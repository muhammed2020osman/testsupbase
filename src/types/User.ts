export interface User {
  id: string;
  name: string;
  email: string;
  role: 'Admin' | 'User' | 'Manager';
  department: string;
  status: 'Active' | 'Inactive';
  created_at: string;
  updated_at: string;
  avatar?: string;
}

export interface UserFormData {
  name: string;
  email: string;
  role: 'Admin' | 'User' | 'Manager';
  department: string;
  status: 'Active' | 'Inactive';
  avatar?: string;
}