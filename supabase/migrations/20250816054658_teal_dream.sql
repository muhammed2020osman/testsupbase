/*
  # Fix RLS policies for users table

  1. Security Changes
    - Drop existing restrictive policies
    - Add new policies that allow public access for demo purposes
    - Enable full CRUD operations for anonymous users

  Note: In production, you would want proper authentication and more restrictive policies
*/

-- Drop existing policies
DROP POLICY IF EXISTS "Authenticated users can read all users" ON users;
DROP POLICY IF EXISTS "Authenticated users can insert users" ON users;
DROP POLICY IF EXISTS "Authenticated users can update users" ON users;
DROP POLICY IF EXISTS "Authenticated users can delete users" ON users;

-- Create new policies that allow public access
CREATE POLICY "Allow public read access"
  ON users
  FOR SELECT
  TO public
  USING (true);

CREATE POLICY "Allow public insert access"
  ON users
  FOR INSERT
  TO public
  WITH CHECK (true);

CREATE POLICY "Allow public update access"
  ON users
  FOR UPDATE
  TO public
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Allow public delete access"
  ON users
  FOR DELETE
  TO public
  USING (true);