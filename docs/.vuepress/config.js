module.exports = {
  title: "关当当的博客",
  description: "记录学习",
  // dest: './dist',
  port: "7777",
  head: [
    // ['link', { rel: 'icon', href: '/logo.jpg' }],
    // ['link', { rel: 'stylesheet', href: '/styles/common.css' }]
    // ['link', { rel: 'stylesheet', href: '/styles/index.styl' }]
  ],
  markdown: {
    lineNumbers: true,
  },
  themeConfig: {
    nav: require("./nav.js"),
    sidebar: require("./sidebar.js"),
    sidebarDepth: 2,
    lastUpdated: "Last Updated",
    searchMaxSuggestoins: 10,
    serviceWorker: {
      updatePopup: {
        message: "有新的内容.",
        buttonText: "更新",
      },
    },
    editLinks: true,
    editLinkText: "在 GitHub 上编辑此页 ！",
  },
};
