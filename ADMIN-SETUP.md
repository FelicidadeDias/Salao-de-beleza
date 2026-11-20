# Configuração do painel administrativo — Studio Belle

O painel já está integrado no frontend, mas requer um projecto Supabase próprio para autenticação e armazenamento persistente. Não reutilize o projecto da Feli Amigos Academy.

## 1. Criar o backend
1. Crie um projecto Supabase dedicado a esta loja.
2. Abra SQL Editor e execute todo o conteúdo de `supabase-setup.sql`.
3. Em Authentication, desactive o registo público de utilizadores.
4. Crie o utilizador administrador em Authentication > Users.
5. No registo do utilizador, defina em **App Metadata**: `{"role":"admin"}`. Não use User Metadata para permissões.

## 2. Ligar o website
1. Copie a Project URL e a chave pública (anon/publishable) do Supabase.
2. Coloque os valores em `supabase-config.js`.
3. Publique novamente o repositório no GitHub Pages.

## 3. Aceder
Abra `/admin.html` e entre com o e-mail e a palavra-passe do utilizador administrador.

O painel permite actualizar a identidade/contactos, serviços e produtos. As alterações são guardadas na tabela `site_content` e apresentadas publicamente na loja.

**Segurança:** nunca publique a chave `service_role`. A permissão administrativa é validada por `app_metadata.role = admin` através de políticas RLS.
