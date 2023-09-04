.class public abstract Lcom/ca/mas/foundation/auth/MASApplication;
.super Ljava/lang/Object;
.source "MASApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;,
        Lcom/ca/mas/foundation/auth/MASApplication$c;
    }
.end annotation


# static fields
.field private static a:Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/auth/MASApplication$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/auth/MASApplication$a;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/auth/MASApplication;->a:Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ca/mas/foundation/auth/MASApplication$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/auth/MASApplication;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/auth/MASApplication;->a:Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    return-object v0
.end method

.method public static retrieveEnterpriseApps(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/auth/MASApplication;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASConfiguration;->getCurrentConfiguration()Lcom/ca/mas/foundation/MASConfiguration;

    move-result-object v0

    const-string v1, "msso.url.enterprise_apps"

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASConfiguration;->getEndpointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->notifyOnCancel()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ca/mas/foundation/auth/MASApplication$b;

    invoke-direct {v1, p0}, Lcom/ca/mas/foundation/auth/MASApplication$b;-><init>(Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {p0, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setApplicationLauncher(Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ca/mas/foundation/auth/MASApplication;->a:Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    return-void
.end method


# virtual methods
.method public abstract getAuthUrl()Ljava/lang/String;
.end method

.method public abstract getCustom()Lorg/json/JSONObject;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNativeUri()Ljava/lang/String;
.end method

.method public abstract renderEnterpriseIcon(Landroid/widget/ImageView;)V
.end method
