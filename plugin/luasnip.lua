local ls = require "luasnip"
local snippet = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-H>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})


ls.add_snippets("cpp", {
    snippet("entity header", fmt(
        [[
        #pragma once
        #include "Entity.h"

        class {} : public Entity {{
        public:
            void Init(InitArgs args);

            static TypeID TYPEID;
            static const char* GetStaticName() {{ return "e_{}"; }}
            static EntityDependendies GetStaticDependencies();
        }};
        ]]
        ,
        { i(1, "EntityClassName"), i(2, "EntityDisplayName") }
    )),

    snippet("entity class", fmt(
        [[
        #include "{}.h"
        #include "Resource/ResourceManager.h"
        using namespace glm;

        EntityDependendies {}::GetStaticDependencies() {{
            return {{
                "st_tpillar"
            }};
        }}

        void {}::Init(Entity::InitArgs args) {{
            ResourceManager& resourceManager = args.resourceManager;
            model_ = resourceManager.GetModel("st_tpillar");
            materials_[0].shader = resourceManager.GetShader("vs_static", "fs_dfsa_color");
            materials_[0].shadowShader = resourceManager.GetShader("vs_static_s", "fs_depth_s");
            materials_[0].castShadows = true;
            materials_[0].properties.color = vec4(0.5f, 0.5f, 0.5f, 1.0f);

            pushbox_.top = 1.0f;
            pushbox_.bottom = 1.0f;
            pushbox_.radius = 1.0f;
        }}
        ]],
        { i(1, "EntityClassName"), rep(1), rep(1) }
    )),

    snippet("for-i=0", fmt(
        [[
        for (int {} = 0; {} < {}; {}++) {{
            {}
        }}
        ]]
        ,
        { i(1, "i"), rep(1), i(2, "boundary"), rep(1), i(3) }
    )),


    snippet("for-2d", fmt(
        [[
        for (int {} = 0; {} < {}; {}++) {{
        for (int {} = 0; {} < {}; {}++) {{
            {}
        }}
        ]]
        ,
        { i(1, "x"), rep(1), i(2, "x-boundary"), i(1), i(3, "y"), rep(3), i(4, "y-boundary"), rep(3), i(5) }
    )),
})
