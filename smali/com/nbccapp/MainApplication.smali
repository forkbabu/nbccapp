.class public Lcom/nbccapp/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 16
    new-instance v0, Lcom/nbccapp/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/nbccapp/MainApplication$1;-><init>(Lcom/nbccapp/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/nbccapp/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/nbccapp/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/nbccapp/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nbccapp/MainApplication;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method
