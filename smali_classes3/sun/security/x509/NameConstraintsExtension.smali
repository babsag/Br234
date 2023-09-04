.class public Lsun/security/x509/NameConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "NameConstraintsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EXCLUDED_SUBTREES:Ljava/lang/String; = "excluded_subtrees"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field public static final NAME:Ljava/lang/String; = "NameConstraints"

.field public static final PERMITTED_SUBTREES:Ljava/lang/String; = "permitted_subtrees"


# instance fields
.field private a:Lsun/security/x509/GeneralSubtrees;

.field private b:Lsun/security/x509/GeneralSubtrees;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    .line 12
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->e:Z

    .line 14
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 16
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 17
    new-instance p1, Lsun/security/util/DerValue;

    invoke-direct {p1, p2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 18
    iget-byte p2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne p2, v1, :cond_6

    .line 19
    iget-object p2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez p2, :cond_0

    return-void

    .line 20
    :cond_0
    :goto_0
    iget-object p2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {p2}, Lsun/security/util/DerInputStream;->available()I

    move-result p2

    if-eqz p2, :cond_5

    .line 21
    iget-object p2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {p2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object p2

    .line 22
    invoke-virtual {p2, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-nez v2, :cond_1

    .line 24
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 25
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v2, p2}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Duplicate permitted GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p2, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {p2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    if-nez v2, :cond_3

    .line 30
    invoke-virtual {p2, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 31
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v2, p2}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    .line 32
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Duplicate excluded GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encoding of NameConstraintsExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_5
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->e:Z

    return-void

    .line 35
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid encoding for NameConstraintsExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsun/security/x509/GeneralSubtrees;Lsun/security/x509/GeneralSubtrees;)V
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
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    .line 3
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->e:Z

    .line 5
    iput-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    .line 6
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    .line 7
    sget-object p1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 9
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->b()V

    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->c:Z

    .line 2
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->d:Z

    .line 3
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 5
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v4, v1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->c:Z

    .line 8
    :cond_0
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 9
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->d:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_5

    .line 11
    :goto_1
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 12
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->c:Z

    .line 15
    :cond_3
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 16
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->d:Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_5
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->e:Z

    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->e:Z

    .line 2
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void

    .line 4
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 5
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 6
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    const/16 v4, -0x80

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 8
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6, v3}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 9
    invoke-static {v4, v5, v0}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {v2, v0, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 12
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v0}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 13
    invoke-static {v4, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v2, v3, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_2
    const/16 v0, 0x30

    .line 14
    invoke-virtual {v1, v0, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    .line 2
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtrees;

    iput-object v1, v0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    .line 4
    :cond_0
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtrees;

    iput-object v1, v0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CloneNotSupportedException while cloning NameConstraintsException. This should never happen."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "permitted_subtrees"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    :cond_0
    const-string v0, "excluded_subtrees"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    .line 5
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->b()V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 5
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->b()V

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

    const-string v0, "permitted_subtrees"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    return-object p1

    :cond_0
    const-string v0, "excluded_subtrees"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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

    const-string v1, "permitted_subtrees"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "excluded_subtrees"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NameConstraints"

    return-object v0
.end method

.method public merge(Lsun/security/x509/NameConstraintsExtension;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "excluded_subtrees"

    .line 1
    invoke-virtual {p1, v0}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    .line 2
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    :cond_3
    :goto_1
    const-string v0, "permitted_subtrees"

    .line 5
    invoke-virtual {p1, v0}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/security/x509/GeneralSubtrees;

    .line 6
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    :cond_4
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_7

    .line 8
    invoke-virtual {v0, p1}, Lsun/security/x509/GeneralSubtrees;->intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0, p1}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/security/x509/GeneralSubtrees;

    iput-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    .line 12
    :cond_7
    :goto_2
    iget-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-eqz p1, :cond_8

    .line 13
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {p1, v0}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    .line 14
    :cond_8
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->b()V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "permitted_subtrees"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Attribute value should be of type GeneralSubtrees."

    if-eqz v0, :cond_1

    .line 2
    instance-of p1, p2, Lsun/security/x509/GeneralSubtrees;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "excluded_subtrees"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    instance-of p1, p2, Lsun/security/x509/GeneralSubtrees;

    if-eqz p1, :cond_2

    .line 7
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    .line 8
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->b()V

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NameConstraints: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    Permitted:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    .line 2
    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    Excluded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    .line 3
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    iget-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->a()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->c:Z

    if-nez v0, :cond_7

    .line 4
    iget-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->d:Z

    if-nez v0, :cond_6

    .line 5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "subject_name"

    .line 11
    invoke-virtual {p1, v1}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lsun/security/x509/NameConstraintsExtension;->verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 14
    invoke-virtual {v1, p1}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract extensions from certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Maximum BaseDistance in name constraints not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Non-zero minimum BaseDistance in name constraints not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Certificate is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verify(Lsun/security/x509/GeneralNameInterface;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 21
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 23
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->b:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    invoke-interface {v3, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 28
    :goto_2
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 29
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->a:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v4, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    invoke-interface {v4, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v4

    if-eqz v4, :cond_9

    if-eq v4, v2, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v2

    :cond_a
    if-eqz v3, :cond_b

    return v1

    :cond_b
    return v2

    .line 33
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "name is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AVA;

    .line 3
    invoke-virtual {v0}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 4
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lsun/security/x509/AVA;->getValueString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    new-instance v1, Lsun/security/x509/RFC822Name;

    invoke-direct {v1, v0}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {p0, v1}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
