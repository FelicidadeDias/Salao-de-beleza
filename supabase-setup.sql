-- Studio Belle: conteúdo público e gestão restrita a administradores.
create table if not exists public.site_content (
  id integer primary key check (id = 1),
  content jsonb not null default '{"config":{},"services":[],"products":[]}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.site_content enable row level security;
grant select on public.site_content to anon, authenticated;
grant insert, update on public.site_content to authenticated;
drop policy if exists "Conteúdo da loja visível publicamente" on public.site_content;
create policy "Conteúdo da loja visível publicamente"
on public.site_content for select to anon, authenticated using (id = 1);
drop policy if exists "Apenas administradores podem inserir conteúdo" on public.site_content;
create policy "Apenas administradores podem inserir conteúdo"
on public.site_content for insert to authenticated
with check (id = 1 and (auth.jwt() -> 'app_metadata' ->> 'role') = 'admin');
drop policy if exists "Apenas administradores podem actualizar conteúdo" on public.site_content;
create policy "Apenas administradores podem actualizar conteúdo"
on public.site_content for update to authenticated
using (id = 1 and (auth.jwt() -> 'app_metadata' ->> 'role') = 'admin')
with check (id = 1 and (auth.jwt() -> 'app_metadata' ->> 'role') = 'admin');

insert into public.site_content (id, content)
values (1, '{"config":{"brand":"Studio Belle","whatsapp":"","phone":"+244 000 000 000","address":"Adicionar endereço do salão","hours":"Segunda a Sábado · 08h às 18h","instagram":"@seusalao","currency":"Kz"},"services":[],"products":[]}'::jsonb)
on conflict (id) do nothing;
