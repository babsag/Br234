.class public Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;
.super Ljava/lang/Object;
.source "CredentialDatabase.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "CredentialDatabase.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static a:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;


# instance fields
.field public credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

.field public db:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

.field public protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "protectionSpaceDao",
            "credentialDao"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->db:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    .line 4
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    .line 5
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->a:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-direct {v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;)V

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    invoke-direct {v2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;)V

    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->a:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    return-object p0
.end method


# virtual methods
.method public clearAllAuthCredentials()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->db:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->clearAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public getHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "protocol",
            "realm",
            "port"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->id:Ljava/lang/Long;

    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->getAllByProtectionSpaceId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public removeHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "protocol",
            "realm",
            "port",
            "username",
            "password"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->id:Ljava/lang/Long;

    invoke-virtual {p2, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->delete(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;)J

    :cond_0
    return-void
.end method

.method public removeHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "protocol",
            "realm",
            "port"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-virtual {p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->delete(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;)J

    :cond_0
    return-void
.end method

.method public setHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "protocol",
            "realm",
            "port",
            "username",
            "password"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->insert(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->id:Ljava/lang/Long;

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    invoke-virtual {p2, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 5
    iget-object p3, p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 6
    iput-object p5, p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    :cond_1
    iget-object p3, p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 8
    iput-object p6, p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move p4, p1

    :goto_1
    if-eqz p4, :cond_4

    .line 9
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    invoke-virtual {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->update(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;)J

    goto :goto_2

    .line 10
    :cond_3
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p5, p6, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    invoke-virtual {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->insert(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->id:Ljava/lang/Long;

    :cond_4
    :goto_2
    return-void
.end method
