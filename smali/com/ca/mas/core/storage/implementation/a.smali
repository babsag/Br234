.class Lcom/ca/mas/core/storage/implementation/a;
.super Ljava/lang/Object;
.source "AMSSManager.java"


# static fields
.field private static a:Lcom/ca/mas/core/storage/implementation/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/accounts/Account;

.field private e:Ljava/lang/Object;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CA MAS"

    .line 2
    iput-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->e:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/ca/mas/core/storage/implementation/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/a;->c:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/ca/mas/core/storage/implementation/a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/core/storage/implementation/a;->b:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 8
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const-string v0, "Missing/malformed android.accounts.AccountAuthenticator xml file in application resource."

    if-eqz p1, :cond_0

    const-string p1, "MAS"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/4 v1, 0x0

    const/16 v2, 0x6f

    invoke-direct {p1, v0, v1, v2}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 11
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/ca/mas/core/storage/implementation/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 12
    :cond_2
    new-instance p1, Lcom/ca/mas/core/storage/StorageException;

    const/16 v0, 0x6a

    invoke-direct {p1, v0}, Lcom/ca/mas/core/storage/StorageException;-><init>(I)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    const-string v0, "Can\'t access Account"

    .line 1
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/core/storage/implementation/a;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ca/mas/core/storage/implementation/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-boolean p1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MAS"

    const-string p2, "Account already present"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 p1, 0x73

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/core/storage/implementation/a;->b()Landroid/accounts/Account;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/ca/mas/core/storage/implementation/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p2, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {p2, v0, v3, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 9
    new-instance v1, Lcom/ca/mas/core/storage/StorageException;

    invoke-direct {v1, v0, p2, p1}, Lcom/ca/mas/core/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method private c()Ljava/lang/String;
    .locals 5

    const-string v0, "account.name"

    const-string v1, "CA MAS"

    .line 1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    const-class v4, Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 6
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "Account name is not provided, use %S"

    .line 7
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAS"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private d()Ljava/lang/String;
    .locals 4

    const-string v0, "MAS"

    .line 1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    const-class v3, Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.accounts.AccountAuthenticator"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 6
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account-authenticator"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "accountType"

    .line 9
    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 11
    :goto_1
    sget-boolean v2, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Failed to retrieve account type"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    nop

    .line 12
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing android.accounts.AccountAuthenticator metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/ca/mas/core/storage/implementation/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/core/storage/StorageException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ca/mas/core/storage/implementation/a;->a:Lcom/ca/mas/core/storage/implementation/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/storage/implementation/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ca/mas/core/storage/implementation/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ca/mas/core/storage/implementation/a;->a:Lcom/ca/mas/core/storage/implementation/a;

    .line 3
    :cond_0
    sget-object p0, Lcom/ca/mas/core/storage/implementation/a;->a:Lcom/ca/mas/core/storage/implementation/a;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 5
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method b()Landroid/accounts/Account;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->d:Landroid/accounts/Account;

    if-nez v0, :cond_4

    .line 2
    iget-object v1, p0, Lcom/ca/mas/core/storage/implementation/a;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->d:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/storage/implementation/a;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/ca/mas/core/storage/implementation/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 7
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/ca/mas/core/storage/implementation/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iput-object v5, p0, Lcom/ca/mas/core/storage/implementation/a;->d:Landroid/accounts/Account;

    .line 9
    monitor-exit v1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const-string v0, "MAS"

    const-string v5, "Account of type %s, name %s doesn\'t exist "

    new-array v6, v2, [Ljava/lang/Object;

    .line 11
    iget-object v7, p0, Lcom/ca/mas/core/storage/implementation/a;->c:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/ca/mas/core/storage/implementation/a;->b:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "Account of type %s, name %s doesn\'t exist "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ca/mas/core/storage/implementation/a;->c:Ljava/lang/String;

    aput-object v6, v2, v3

    iget-object v3, p0, Lcom/ca/mas/core/storage/implementation/a;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    return-object v0
.end method
