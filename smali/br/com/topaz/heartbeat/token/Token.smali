.class public Lbr/com/topaz/heartbeat/token/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;,
        Lbr/com/topaz/heartbeat/token/Token$DismissCallback;,
        Lbr/com/topaz/heartbeat/token/Token$TokenCallback;,
        Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;,
        Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;
    }
.end annotation


# instance fields
.field private tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/token/Token;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-direct {v0, p1}, Lbr/com/topaz/heartbeat/token/TokenInitializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public authorize(Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public checkToken(Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Lbr/com/topaz/heartbeat/token/Token$CheckTokenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dismiss(Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Lbr/com/topaz/heartbeat/token/Token$DismissCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getToken(Lbr/com/topaz/heartbeat/token/Token$TokenCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Lbr/com/topaz/heartbeat/token/Token$TokenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hasSeed()Z
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a()Z

    move-result v0

    return v0
.end method

.method public requestAuthorization(Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public requestAuthorization(Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/Token;->tokenInitializer:Lbr/com/topaz/heartbeat/token/TokenInitializer;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/token/TokenInitializer;->a(Ljava/lang/String;Lbr/com/topaz/heartbeat/token/Token$RequestAuthorizationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
