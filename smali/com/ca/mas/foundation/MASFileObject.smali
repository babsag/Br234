.class public Lcom/ca/mas/foundation/MASFileObject;
.super Ljava/lang/Object;
.source "MASFileObject.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p4, p0, Lcom/ca/mas/foundation/MASFileObject;->e:Landroid/net/Uri;

    .line 14
    iput-object p2, p0, Lcom/ca/mas/foundation/MASFileObject;->c:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->a:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/ca/mas/foundation/MASFileObject;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->a:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/ca/mas/foundation/MASFileObject;->b:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/ca/mas/foundation/MASFileObject;->c:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/ca/mas/foundation/MASFileObject;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ca/mas/foundation/MASFileObject;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/ca/mas/foundation/MASFileObject;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/ca/mas/foundation/MASFileObject;->f:[B

    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASFileObject;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFileBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASFileObject;->f:[B

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASFileObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASFileObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASFileObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASFileObject;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->d:Ljava/lang/String;

    return-void
.end method

.method public setFileBytes([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->f:[B

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->a:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->b:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->c:Ljava/lang/String;

    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASFileObject;->e:Landroid/net/Uri;

    return-void
.end method
