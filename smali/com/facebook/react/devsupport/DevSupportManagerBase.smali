.class public abstract Lcom/facebook/react/devsupport/DevSupportManagerBase;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
.implements Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;
.implements Lcom/facebook/react/devsupport/DevInternalSettings$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevSupportManagerBase$BundleLoadCallback;,
        Lcom/facebook/react/devsupport/DevSupportManagerBase$JSExceptionLogger;,
        Lcom/facebook/react/devsupport/DevSupportManagerBase$ExceptionLogger;,
        Lcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;,
        Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;
    }
.end annotation


# static fields
.field public static final EMOJI_FACE_WITH_NO_GOOD_GESTURE:Ljava/lang/String; = " \ud83d\ude45"

.field public static final EMOJI_HUNDRED_POINTS_SYMBOL:Ljava/lang/String; = " \ud83d\udcaf"

.field private static final EXOPACKAGE_LOCATION_FORMAT:Ljava/lang/String; = "/data/local/tmp/exopackage/%s//secondary-dex"

.field private static final FLIPPER_DEBUGGER_URL:Ljava/lang/String; = "flipper://null/Hermesdebuggerrn?device=React%20Native"

.field private static final FLIPPER_DEVTOOLS_URL:Ljava/lang/String; = "flipper://null/React?device=React%20Native"

.field private static final JAVA_ERROR_COOKIE:I = -0x1

.field private static final JSEXCEPTION_ERROR_COOKIE:I = -0x1

.field private static final JS_BUNDLE_FILE_NAME:Ljava/lang/String; = "ReactNativeDevBundle.js"

.field private static final JS_SPLIT_BUNDLES_DIR_NAME:Ljava/lang/String; = "dev_js_split_bundles"

.field private static final RELOAD_APP_ACTION_SUFFIX:Ljava/lang/String; = ".RELOAD_APP_ACTION"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

.field private mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

.field private mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mCustomDevOptions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomPackagerCommandHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

.field private final mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

.field private final mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

.field private mDevLoadingViewVisible:Z

.field private mDevOptionsDialog:Landroid/app/AlertDialog;

.field private final mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

.field private mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

.field private mErrorCustomizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExceptionLoggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/devsupport/DevSupportManagerBase$ExceptionLogger;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDevSupportEnabled:Z

.field private mIsReceiverRegistered:Z

.field private mIsSamplingProfilerEnabled:Z

.field private mIsShakeDetectorStarted:Z

.field private final mJSAppBundleName:Ljava/lang/String;

.field private final mJSBundleTempFile:Ljava/io/File;

.field private final mJSSplitBundlesDir:Ljava/io/File;

.field private mLastErrorCookie:I

.field private mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

.field private mLastErrorTitle:Ljava/lang/String;

.field private mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

.field private mPendingJSSplitBundleRequests:I

.field private final mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

.field private mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

.field private mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

.field private final mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mShakeDetector:Lcom/facebook/react/common/ShakeDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;Ljava/lang/String;ZI)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    .line 143
    invoke-direct/range {v0 .. v8}, Lcom/facebook/react/devsupport/DevSupportManagerBase;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/react/devsupport/RedBoxHandler;",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mExceptionLoggers:Ljava/util/List;

    .line 106
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    .line 117
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    .line 118
    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    .line 121
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 122
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 123
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    .line 127
    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    .line 163
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    .line 164
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 165
    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 166
    new-instance p3, Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-direct {p3, p1, p0}, Lcom/facebook/react/devsupport/DevInternalSettings;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevInternalSettings$Listener;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 167
    new-instance p3, Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    invoke-direct {p3}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;-><init>()V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    .line 168
    new-instance p3, Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/react/devsupport/DevSupportManagerBase$1;

    invoke-direct {v4, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, v2, v3, v4}, Lcom/facebook/react/devsupport/DevServerHelper;-><init>(Lcom/facebook/react/devsupport/DevInternalSettings;Ljava/lang/String;Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    .line 178
    iput-object p6, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 181
    new-instance p3, Lcom/facebook/react/common/ShakeDetector;

    new-instance p6, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;

    invoke-direct {p6, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, p6, p7}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    .line 191
    iput-object p8, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    .line 194
    new-instance p3, Lcom/facebook/react/devsupport/DevSupportManagerBase$3;

    invoke-direct {p3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$3;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p6

    const-string p7, "ReactNativeDevBundle.js"

    invoke-direct {p3, p6, p7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleTempFile:Ljava/io/File;

    const-string p3, "dev_js_split_bundles"

    .line 219
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSSplitBundlesDir:Ljava/io/File;

    .line 221
    new-instance p3, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-direct {p3}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;-><init>()V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    .line 223
    invoke-virtual {p0, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->setDevSupportEnabled(Z)V

    .line 225
    iput-object p5, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    .line 226
    new-instance p3, Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-direct {p3, p2}, Lcom/facebook/react/devsupport/DevLoadingViewController;-><init>(Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    .line 228
    new-instance p2, Lcom/facebook/react/devsupport/DevSupportManagerBase$JSExceptionLogger;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/facebook/react/devsupport/DevSupportManagerBase$JSExceptionLogger;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/DevSupportManagerBase$1;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {p2}, Lcom/facebook/react/devsupport/DevInternalSettings;->isStartSamplingProfilerOnInit()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 232
    iget-boolean p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    if-nez p2, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->toggleJSSamplingProfiler()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const-string p3, "JS Sampling Profiler was already running, so did not start the sampling profiler"

    .line 235
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->toggleJSSamplingProfiler()V

    return-void
.end method

.method static synthetic access$1502(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V

    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showSplitBundleDevLoadingView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideSplitBundleDevLoadingView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevLoadingViewController;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getExecutorConnectCallback(Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2202(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reportBundleLoadingFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxDialog;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/facebook/react/devsupport/DevSupportManagerBase;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V

    return-void
.end method

.method private getExecutorConnectCallback(Lcom/facebook/react/common/futures/SimpleSettableFuture;)Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/common/futures/SimpleSettableFuture<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/react/devsupport/WebsocketJavaScriptExecutor$JSExecutorConnectCallback;"
        }
    .end annotation

    .line 1113
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$27;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$27;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/common/futures/SimpleSettableFuture;)V

    return-object v0
.end method

.method private static getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".RELOAD_APP_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    return-void

    .line 1055
    :cond_0
    const-class v1, Lcom/facebook/react/devsupport/JSCHeapCapture;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSCHeapCapture;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 1059
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V

    .line 1058
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/JSCHeapCapture;->captureHeap(Ljava/lang/String;Lcom/facebook/react/devsupport/JSCHeapCapture$CaptureCallback;)V

    :cond_1
    return-void
.end method

.method private hideDevOptionsDialog()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private hideSplitBundleDevLoadingView()V
    .locals 1

    .line 963
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLoadingViewController;->hide()V

    const/4 v0, 0x0

    .line 965
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    :cond_0
    return-void
.end method

.method private processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p1

    .line 322
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;

    .line 323
    invoke-interface {v1, p1}, Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;->customizeErrorInfo(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private reload()V
    .locals 4

    .line 1300
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1303
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 1310
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    const-string v3, "sensor"

    .line 1312
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1311
    invoke-virtual {v0, v2}, Lcom/facebook/react/common/ShakeDetector;->start(Landroid/hardware/SensorManager;)V

    .line 1313
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 1317
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    if-nez v0, :cond_2

    .line 1318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1319
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1321
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 1325
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    if-eqz v0, :cond_3

    .line 1326
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    const-string v1, "Reloading..."

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showMessage(Ljava/lang/String;)V

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/facebook/react/devsupport/DevServerHelper;->openPackagerConnection(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;)V

    goto :goto_0

    .line 1332
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1333
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 1337
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    if-eqz v0, :cond_6

    .line 1338
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    invoke-virtual {v0}, Lcom/facebook/react/common/ShakeDetector;->stop()V

    .line 1339
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 1343
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_7

    .line 1344
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1345
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 1349
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideRedboxDialog()V

    .line 1352
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideDevOptionsDialog()V

    .line 1355
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLoadingViewController;->hide()V

    .line 1356
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    :goto_0
    return-void
.end method

.method private reloadJSInProxyMode()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->launchJSDevtools()V

    .line 1089
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$26;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$26;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 1108
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;->onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    return-void
.end method

.method private reportBundleLoadingFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1209
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$30;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$30;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 8

    .line 793
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne v0, p1, :cond_0

    return-void

    .line 798
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    .line 801
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 802
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 805
    new-instance v0, Lcom/facebook/react/devsupport/DebugOverlayController;

    invoke-direct {v0, p1}, Lcom/facebook/react/devsupport/DebugOverlayController;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    .line 808
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz p1, :cond_3

    .line 810
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 812
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 813
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 814
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v0, Lcom/facebook/react/devsupport/HMRClient;

    .line 815
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    const-string v3, "android"

    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 816
    invoke-virtual {p1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/facebook/react/devsupport/HMRClient;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 818
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 822
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method private showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V
    .locals 7

    .line 391
    new-instance v6, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V

    invoke-static {v6}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSplitBundleDevLoadingView(Ljava/lang/String;)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 957
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    .line 958
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    return-void
.end method

.method private toggleJSSamplingProfiler()V
    .locals 7

    .line 653
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    .line 654
    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;->getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    .line 655
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 657
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;->startSamplingProfiler()V

    .line 658
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    const-string v4, "Starting Sampling Profiler"

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :goto_0
    iput-boolean v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 661
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support Sampling Profiler"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 667
    :goto_1
    iput-boolean v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    .line 668
    throw v0

    :cond_0
    :try_start_2
    const-string v1, "sampling-profiler-trace"

    const-string v4, ".cpuprofile"

    .line 671
    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 673
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 672
    invoke-static {v1, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/JavaScriptExecutorFactory;->stopSamplingProfiler(Ljava/lang/String;)V

    .line 676
    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved results from Profiler to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 680
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 686
    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "does not support Sampling Profiler"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :catch_2
    const-string v0, "ReactNative"

    const-string v1, "Could not create temporary file for saving results from Sampling Profiler"

    .line 682
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 692
    :goto_2
    iput-boolean v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    :goto_3
    return-void

    :goto_4
    iput-boolean v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    .line 693
    throw v0
.end method

.method private updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorTitle:Ljava/lang/String;

    .line 1080
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 1081
    iput p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    return-void
.end method


# virtual methods
.method public addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;->createRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public customCommandHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    return-object v0
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;->destroyRootView(Landroid/view/View;)V

    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
    .locals 6

    .line 895
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSSplitBundlesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    const-string v5, "_"

    .line 898
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jsbundle"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 899
    new-instance p1, Lcom/facebook/react/devsupport/DevSupportManagerBase$20;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$20;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object v0
.end method

.method public getDevSupportEnabled()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    return v0
.end method

.method public getDownloadedJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 753
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 752
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSBundleURLForRemoteDebugging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    return-object v0
.end method

.method public getLastErrorTitle()Ljava/lang/String;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMapUrl()Ljava/lang/String;
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mExceptionLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$ExceptionLogger;

    .line 249
    invoke-interface {v1, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public handleReloadJS()V
    .locals 3

    .line 847
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 849
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->RELOAD:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 851
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->getDebugServerHost()Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideRedboxDialog()V

    .line 856
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v2, "RNCore: load from Proxy"

    .line 858
    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForRemoteJSEnabled()V

    const/4 v0, 0x1

    .line 860
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    .line 861
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadJSInProxyMode()V

    goto :goto_0

    .line 863
    :cond_0
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->RN_CORE:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    const-string v2, "RNCore: load from Server"

    .line 864
    invoke-interface {v0, v1, v2}, Lcom/facebook/debug/holder/Printer;->logMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 866
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-virtual {p0, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadJSFromServer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public hasUpToDateJSBundleInCache()Z
    .locals 8

    .line 768
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 771
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 772
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 773
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    .line 777
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/data/local/tmp/exopackage/%s//secondary-dex"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v1

    .line 778
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v3, v6

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v5

    :catch_0
    const-string v0, "ReactNative"

    const-string v2, "DevSupport is unable to get current app info"

    .line 786
    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public hideRedboxDialog()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->dismiss()V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    :cond_0
    return-void
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 1

    .line 971
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$21;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$21;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    .line 978
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

    if-eqz p1, :cond_0

    .line 979
    invoke-interface {p1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 981
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public loadSplitBundleFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V
    .locals 1

    .line 874
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevSplitBundleCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    return-void
.end method

.method public onCaptureHeapCommand(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 1

    .line 1037
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$24;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$24;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInternalSettingsChanged()V
    .locals 0

    .line 841
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method public onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 720
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public onPackagerConnected()V
    .locals 0

    return-void
.end method

.method public onPackagerDevMenuCommand()V
    .locals 1

    .line 1026
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$23;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$23;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackagerDisconnected()V
    .locals 0

    return-void
.end method

.method public onPackagerReloadCommand()V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->disableDebugger()V

    .line 1015
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$22;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$22;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 728
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    :cond_0
    return-void
.end method

.method public registerErrorCustomizer(Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;)V
    .locals 1

    .line 1133
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$BundleLoadCallback;)V

    return-void
.end method

.method protected reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$BundleLoadCallback;)V
    .locals 3

    .line 1154
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->DOWNLOAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 1156
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1157
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    .line 1159
    new-instance v0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    invoke-direct {v0}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;-><init>()V

    .line 1161
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$29;

    invoke-direct {v2, p0, v0, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$29;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/DevSupportManagerBase$BundleLoadCallback;)V

    iget-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleTempFile:Ljava/io/File;

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V

    return-void
.end method

.method public reloadSettings()V
    .locals 1

    .line 827
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V

    goto :goto_0

    .line 830
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setDevSupportEnabled(Z)V
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    .line 705
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method public setFpsDebugEnabled(Z)V
    .locals 1

    .line 1270
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1274
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$33;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$33;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHotModuleReplacementEnabled(Z)V
    .locals 1

    .line 1238
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1242
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$31;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$31;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPackagerLocationCustomizer(Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;)V
    .locals 0

    .line 1368
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

    return-void
.end method

.method public setRemoteJSDebugEnabled(Z)V
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1258
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$32;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$32;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 432
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/facebook/react/R$string;->catalyst_reload:I

    .line 435
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 434
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isDeviceDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->setRemoteJSDebugEnabled(Z)V

    .line 459
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_debug_open:I

    .line 462
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 461
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_devtools_open:I

    .line 473
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 472
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 487
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_debug_stop:I

    .line 488
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_debug:I

    .line 489
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$9;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$9;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 486
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :goto_1
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_change_bundle_location:I

    .line 499
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 498
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_inspector:I

    .line 535
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$11;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$11;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 533
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 545
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading_stop:I

    .line 546
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading:I

    .line 547
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 544
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsSamplingProfilerEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_sample_profiler_disable:I

    .line 574
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_sample_profiler_enable:I

    .line 575
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 572
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 584
    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor_stop:I

    .line 585
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor:I

    .line 586
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$14;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$14;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 583
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_settings:I

    .line 603
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 602
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 614
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 617
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v2, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .line 619
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceManagerHelper:Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;

    invoke-interface {v3}, Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 620
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 626
    :cond_8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$17;

    invoke-direct {v2, p0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$17;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    .line 628
    invoke-virtual {v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$16;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$16;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 637
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    .line 645
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 646
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_9

    .line 647
    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    const/4 v1, 0x0

    const-string v2, "RCTDevMenuShown"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    :goto_5
    const-string v0, "ReactNative"

    const-string v1, "Unable to launch dev options menu because react activity isn\'t available"

    .line 621
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1

    .line 307
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p2

    sget-object v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;->JS:Lcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V

    return-void
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ReactNative"

    const-string v1, "Exception in native call"

    .line 290
    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJavaStackTrace(Ljava/lang/Throwable;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p2

    sget-object v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;->NATIVE:Lcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;

    const/4 v1, -0x1

    .line 291
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/DevSupportManagerBase$ErrorType;)V

    return-void
.end method

.method public startInspector()V
    .locals 1

    .line 1226
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->openInspectorConnection()V

    :cond_0
    return-void
.end method

.method public stopInspector()V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->closeInspectorConnection()V

    return-void
.end method

.method public toggleElementInspector()V
    .locals 1

    .line 1285
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1289
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$34;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$34;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1

    .line 335
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$4;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;ILcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
