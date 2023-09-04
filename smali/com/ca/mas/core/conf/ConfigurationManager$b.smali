.class Lcom/ca/mas/core/conf/ConfigurationManager$b;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/ca/mas/core/conf/ConfigurationManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/conf/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.ca.mas.core.conf.ConfigurationManager.b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ca/mas/core/conf/ConfigurationManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ca/mas/core/conf/ConfigurationManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ca/mas/core/conf/ConfigurationProvider;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->reset()V

    .line 2
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->hasValidStore()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/ca/mas/core/conf/ConfigurationManager$b;->a:Ljava/lang/String;

    const-string p2, "Failed to access the secure device storage, please verify the storage configuration, and make sure the device has Secure lock screen setup."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lcom/ca/mas/core/store/ClientCredentialContainer;->getMasterClientId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p2}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getClientCredentialContainer()Lcom/ca/mas/core/store/ClientCredentialContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/ca/mas/core/store/ClientCredentialContainer;->clear()V

    .line 9
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/store/StorageProvider;->getOAuthTokenContainer()Lcom/ca/mas/core/store/OAuthTokenContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/ca/mas/core/store/OAuthTokenContainer;->clear()V

    :cond_2
    return-void
.end method
