.class public Lsun/security/x509/AuthorityKeyIdentifierExtension;
.super Lsun/security/x509/Extension;
.source "AuthorityKeyIdentifierExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTH_NAME:Ljava/lang/String; = "auth_name"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field public static final KEY_ID:Ljava/lang/String; = "key_id"

.field public static final NAME:Ljava/lang/String; = "AuthorityKeyIdentifier"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"


# instance fields
.field private a:Lsun/security/x509/KeyIdentifier;

.field private b:Lsun/security/x509/GeneralNames;

.field private c:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    .line 13
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    .line 14
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    .line 15
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 17
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 18
    new-instance p1, Lsun/security/util/DerValue;

    invoke-direct {p1, p2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 19
    iget-byte p2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v0, 0x30

    if-ne p2, v0, :cond_7

    .line 20
    :goto_0
    iget-object p2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lsun/security/util/DerInputStream;->available()I

    move-result p2

    if-eqz p2, :cond_6

    .line 21
    iget-object p2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {p2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object p2

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 24
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 25
    new-instance v1, Lsun/security/x509/KeyIdentifier;

    invoke-direct {v1, p2}, Lsun/security/x509/KeyIdentifier;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Duplicate KeyIdentifier in AuthorityKeyIdentifier."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {p2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    if-nez v1, :cond_2

    .line 30
    invoke-virtual {p2, v0}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 31
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1, p2}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 32
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Duplicate GeneralNames in AuthorityKeyIdentifier."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x2

    .line 33
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    invoke-virtual {p2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 35
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    if-nez v2, :cond_4

    .line 36
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 37
    new-instance v1, Lsun/security/x509/SerialNumber;

    invoke-direct {v1, p2}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    goto :goto_0

    .line 38
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Duplicate SerialNumber in AuthorityKeyIdentifier."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encoding of AuthorityKeyIdentifierExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void

    .line 40
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encoding for AuthorityKeyIdentifierExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsun/security/x509/KeyIdentifier;Lsun/security/x509/GeneralNames;Lsun/security/x509/SerialNumber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    .line 3
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    .line 4
    iput-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    .line 5
    iput-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    .line 6
    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    .line 7
    iput-object p3, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    .line 8
    sget-object p1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 10
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a()V

    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void

    .line 3
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 4
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 5
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    const/4 v3, 0x0

    const/16 v4, -0x80

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 7
    iget-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v5, v2}, Lsun/security/x509/KeyIdentifier;->a(Lsun/security/util/DerOutputStream;)V

    .line 8
    invoke-static {v4, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v1, v5, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 9
    :cond_1
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 11
    iget-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    invoke-virtual {v5, v2}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    const/4 v5, 0x1

    .line 12
    invoke-static {v4, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v5

    invoke-virtual {v1, v5, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :cond_2
    iget-object v2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    if-eqz v2, :cond_3

    .line 14
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 15
    iget-object v5, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    invoke-virtual {v5, v2}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    const/4 v5, 0x2

    .line 16
    invoke-static {v4, v3, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_3
    const/16 v2, 0x30

    .line 17
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "key_id"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    goto :goto_0

    :cond_0
    const-string v0, "auth_name"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    goto :goto_0

    :cond_1
    const-string v0, "serial_number"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    .line 7
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a()V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
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
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 5
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a()V

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "key_id"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    return-object p1

    :cond_0
    const-string v0, "auth_name"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    return-object p1

    :cond_1
    const-string v0, "serial_number"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    const-string v1, "key_id"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "auth_name"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "serial_number"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AuthorityKeyIdentifier"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "key_id"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    instance-of p1, p2, Lsun/security/x509/KeyIdentifier;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Lsun/security/x509/KeyIdentifier;

    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attribute value should be of type KeyIdentifier."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "auth_name"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    instance-of p1, p2, Lsun/security/x509/GeneralNames;

    if-eqz p1, :cond_2

    .line 7
    check-cast p2, Lsun/security/x509/GeneralNames;

    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attribute value should be of type GeneralNames."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "serial_number"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    instance-of p1, p2, Lsun/security/x509/SerialNumber;

    if-eqz p1, :cond_4

    .line 11
    check-cast p2, Lsun/security/x509/SerialNumber;

    iput-object p2, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    .line 12
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a()V

    return-void

    .line 13
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attribute value should be of type SerialNumber."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attribute name not recognized by CertAttrSet:AuthorityKeyIdentifier."

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

    const-string v1, "AuthorityKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->a:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v0}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->b:Lsun/security/x509/GeneralNames;

    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsun/security/x509/AuthorityKeyIdentifierExtension;->c:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
