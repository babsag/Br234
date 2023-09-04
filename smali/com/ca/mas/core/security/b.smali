.class Lcom/ca/mas/core/security/b;
.super Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;
.source "SharedPreferencesKeyStorageProvider.java"


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected deleteSecretKeyLocally(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SECRET_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/b;->b:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method protected getEncryptedSecretKey(Ljava/lang/String;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SECRET_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "default"

    .line 2
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected storeSecretKeyLocally(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/core/security/KeyStoreKeyStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SECRET_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/core/security/b;->b:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method
