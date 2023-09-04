.class public Lsun/security/x509/NetscapeCertTypeExtension;
.super Lsun/security/x509/Extension;
.source "NetscapeCertTypeExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/NetscapeCertTypeExtension$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field public static final NAME:Ljava/lang/String; = "NetscapeCertType"

.field public static NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final OBJECT_SIGNING:Ljava/lang/String; = "object_signing"

.field public static final OBJECT_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field public static final SSL_CA:Ljava/lang/String; = "ssl_ca"

.field public static final SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field public static final SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field public static final S_MIME:Ljava/lang/String; = "s_mime"

.field public static final S_MIME_CA:Ljava/lang/String; = "s_mime_ca"

.field private static final a:[I

.field private static b:[Lsun/security/x509/NetscapeCertTypeExtension$a;

.field private static final c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->a:[I

    .line 2
    :try_start_0
    new-instance v2, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v2, v1}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-array v1, v0, [Lsun/security/x509/NetscapeCertTypeExtension$a;

    .line 3
    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v3, "ssl_client"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v3, "ssl_server"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v3, "s_mime"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v3, "object_signing"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    const/4 v2, 0x4

    new-instance v3, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v5, "ssl_ca"

    const/4 v6, 0x5

    invoke-direct {v3, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v3, "s_mime_ca"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$a;

    const-string v3, "object_signing_ca"

    invoke-direct {v2, v3, v0}, Lsun/security/x509/NetscapeCertTypeExtension$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    sput-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->b:[Lsun/security/x509/NetscapeCertTypeExtension$a;

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->c:Ljava/util/Vector;

    .line 5
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->b:[Lsun/security/x509/NetscapeCertTypeExtension$a;

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 6
    sget-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->c:Ljava/util/Vector;

    iget-object v2, v2, Lsun/security/x509/NetscapeCertTypeExtension$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 19
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    const/4 v0, 0x0

    new-array v0, v0, [Z

    .line 21
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 13
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 15
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 16
    new-instance p1, Lsun/security/util/DerValue;

    invoke-direct {p1, p2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 17
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object p1

    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 2
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 3
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object p1

    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    .line 4
    sget-object p1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 6
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->a()V

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 8
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    .line 9
    sget-object p1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 11
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->a()V

    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->b:[Lsun/security/x509/NetscapeCertTypeExtension$a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lsun/security/x509/NetscapeCertTypeExtension;->b:[Lsun/security/x509/NetscapeCertTypeExtension$a;

    aget-object p0, p0, v0

    iget p0, p0, Lsun/security/x509/NetscapeCertTypeExtension$a;->b:I

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] not recognized by CertAttrSet:NetscapeCertType."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method private d(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    array-length v1, v0

    if-lt p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v1, v1, [Z

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    .line 5
    :cond_0
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->d:[Z

    aput-boolean p2, v0, p1

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->d(IZ)V

    .line 2
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->a()V

    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 5
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->a()V

    .line 6
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getKeyUsageMappedBits()[Z
    .locals 3

    .line 1
    new-instance v0, Lsun/security/x509/KeyUsageExtension;

    invoke-direct {v0}, Lsun/security/x509/KeyUsageExtension;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :try_start_0
    const-string v2, "ssl_client"

    .line 3
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "s_mime"

    .line 4
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "object_signing"

    .line 5
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "digital_signature"

    .line 6
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v2, "ssl_server"

    .line 7
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "key_encipherment"

    .line 8
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v2, "ssl_ca"

    .line 9
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "s_mime_ca"

    .line 10
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "object_signing_ca"

    .line 11
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "key_certsign"

    .line 12
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NetscapeCertType"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lsun/security/x509/NetscapeCertTypeExtension;->d(IZ)V

    .line 4
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->a()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attribute must be of type Boolean."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NetscapeCertType [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "ssl_client"

    .line 2
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   SSL client\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "ssl_server"

    .line 4
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   SSL server\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "s_mime"

    .line 6
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   S/MIME\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "object_signing"

    .line 8
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   Object Signing\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "ssl_ca"

    .line 10
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   SSL CA\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "s_mime_ca"

    .line 12
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   S/MIME CA\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "object_signing_ca"

    .line 14
    invoke-static {v1}, Lsun/security/x509/NetscapeCertTypeExtension;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->c(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   Object Signing CA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
