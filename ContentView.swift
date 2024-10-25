import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Color.black
                    .frame(height: 150)
                    .cornerRadius(10)
            }
            VStack(alignment: .center) {
                Image("Photo")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .padding(.top, 0)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)

                Text("Bryan Christoper")
                    .font(.title)
                    .bold()
                
                Text("")
                    .foregroundColor(.gray)
                
                HStack {
                    Text("Surabaya")
                        .foregroundColor(.blue)
                    Text("Joined October 2024")
                        .foregroundColor(.gray)
                }

                HStack {
                    Button(action: {}) {
                        Text("Follow")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Button(action: {}) {
                        Text("Message")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        
                    }
                    Button(action: {})
                    {
                        Text("More")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                    }
                }
                .padding(.vertical)

                Text("MAHASISWA ISB UNIVERSITAS CIPUTRA")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "globe")
                        Text("www.instagram.com/bryanchristoper31")
                    }
                    HStack {
                        Image(systemName: "envelope")
                        Text("bchristoper@student.ciputra.ac.id")
                    }
                    HStack {
                        Image(systemName: "phone")
                        Text("+62 8513330078")
                    }
                    HStack {
                        Image(systemName: "calendar")
                        Text("25 October, 1996")
                    }
                }
                .padding()

                // Tags
                HStack {
                    TagView(text: "Mahasiswa UC")
                }
                .padding(.top)
            }
        }
        .padding()
    }
}

struct TagView: View {
    var text: String
    var body: some View {
        Text(text)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(15)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
