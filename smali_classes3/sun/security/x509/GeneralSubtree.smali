.class public Lsun/security/x509/GeneralSubtree;
.super Ljava/lang/Object;
.source "GeneralSubtree.java"


# instance fields
.field private a:Lsun/security/x509/GeneralName;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->b:I

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->c:I

    .line 11
    iput v1, p0, Lsun/security/x509/GeneralSubtree;->d:I

    .line 12
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    .line 13
    new-instance v1, Lsun/security/x509/GeneralName;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    iput-object v1, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    .line 14
    :goto_0
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 17
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 18
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->b:I

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 21
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->c:I

    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid encoding of GeneralSubtree."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 23
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid encoding for GeneralSubtree."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsun/security/x509/GeneralName;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->b:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->c:I

    .line 4
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->d:I

    .line 5
    iput-object p1, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    .line 6
    iput p2, p0, Lsun/security/x509/GeneralSubtree;->b:I

    .line 7
    iput p3, p0, Lsun/security/x509/GeneralSubtree;->c:I

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 3
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->b:I

    const/16 v2, -0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 5
    iget v4, p0, Lsun/security/x509/GeneralSubtree;->b:I

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 6
    invoke-static {v2, v3, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v4

    invoke-virtual {v0, v4, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 7
    :cond_0
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->c:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 8
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 9
    iget v4, p0, Lsun/security/x509/GeneralSubtree;->c:I

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    const/4 v4, 0x1

    .line 10
    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_1
    const/16 v1, 0x30

    .line 11
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lsun/security/x509/GeneralSubtree;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lsun/security/x509/GeneralSubtree;

    .line 3
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_1
    iget-object v2, p1, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    invoke-virtual {v0, v2}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->b:I

    iget v2, p1, Lsun/security/x509/GeneralSubtree;->b:I

    if-eq v0, v2, :cond_3

    return v1

    .line 7
    :cond_3
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->c:I

    iget p1, p1, Lsun/security/x509/GeneralSubtree;->c:I

    if-eq v0, p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getMaximum()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->c:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->b:I

    return v0
.end method

.method public getName()Lsun/security/x509/GeneralName;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    .line 2
    iput v0, p0, Lsun/security/x509/GeneralSubtree;->d:I

    .line 3
    iget-object v0, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    if-eqz v0, :cond_0

    const/16 v2, 0x11

    mul-int/lit8 v2, v2, 0x25

    .line 4
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lsun/security/x509/GeneralSubtree;->d:I

    .line 5
    :cond_0
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->b:I

    if-eqz v0, :cond_1

    .line 6
    iget v2, p0, Lsun/security/x509/GeneralSubtree;->d:I

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v0

    iput v2, p0, Lsun/security/x509/GeneralSubtree;->d:I

    .line 7
    :cond_1
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->c:I

    if-eq v0, v1, :cond_2

    .line 8
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->d:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v0

    iput v1, p0, Lsun/security/x509/GeneralSubtree;->d:I

    .line 9
    :cond_2
    iget v0, p0, Lsun/security/x509/GeneralSubtree;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n   GeneralSubtree: [\n    GeneralName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/x509/GeneralSubtree;->a:Lsun/security/x509/GeneralName;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    Minimum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/security/x509/GeneralSubtree;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lsun/security/x509/GeneralSubtree;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t    Maximum: undefined"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t    Maximum: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsun/security/x509/GeneralSubtree;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    ]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
