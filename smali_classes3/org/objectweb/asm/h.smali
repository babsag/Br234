.class Lorg/objectweb/asm/h;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private A:[I

.field private B:[I

.field private C:I

.field private D:Lorg/objectweb/asm/f;

.field private E:Lorg/objectweb/asm/f;

.field private F:I

.field private G:Lorg/objectweb/asm/ByteVector;

.field private H:I

.field private I:Lorg/objectweb/asm/ByteVector;

.field private J:I

.field private K:Lorg/objectweb/asm/ByteVector;

.field private L:I

.field private M:Lorg/objectweb/asm/ByteVector;

.field private N:I

.field private O:Lorg/objectweb/asm/a;

.field private P:Lorg/objectweb/asm/a;

.field private Q:Lorg/objectweb/asm/Attribute;

.field private R:Z

.field private S:I

.field private final T:I

.field private U:Lorg/objectweb/asm/Label;

.field private V:Lorg/objectweb/asm/Label;

.field private W:Lorg/objectweb/asm/Label;

.field private X:I

.field private Y:I

.field final a:Lorg/objectweb/asm/ClassWriter;

.field private b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:I

.field j:[I

.field private k:Lorg/objectweb/asm/ByteVector;

.field private l:Lorg/objectweb/asm/a;

.field private m:Lorg/objectweb/asm/a;

.field private n:Lorg/objectweb/asm/a;

.field private o:Lorg/objectweb/asm/a;

.field private p:[Lorg/objectweb/asm/a;

.field private q:[Lorg/objectweb/asm/a;

.field private r:I

.field private s:Lorg/objectweb/asm/Attribute;

.field private t:Lorg/objectweb/asm/ByteVector;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lorg/objectweb/asm/ByteVector;

.field private z:I


# direct methods
.method constructor <init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->J:Lorg/objectweb/asm/h;

    if-nez v0, :cond_0

    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->J:Lorg/objectweb/asm/h;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->K:Lorg/objectweb/asm/h;

    iput-object p0, v0, Lorg/objectweb/asm/MethodVisitor;->mv:Lorg/objectweb/asm/MethodVisitor;

    :goto_0
    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->K:Lorg/objectweb/asm/h;

    iput-object p1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iput p2, p0, Lorg/objectweb/asm/h;->b:I

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/objectweb/asm/h;->b:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/h;->b:I

    :cond_1
    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lorg/objectweb/asm/h;->c:I

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lorg/objectweb/asm/h;->d:I

    iput-object p4, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    iput-object p5, p0, Lorg/objectweb/asm/h;->f:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p6, :cond_2

    array-length p4, p6

    if-lez p4, :cond_2

    array-length p4, p6

    iput p4, p0, Lorg/objectweb/asm/h;->i:I

    new-array p4, p4, [I

    iput-object p4, p0, Lorg/objectweb/asm/h;->j:[I

    const/4 p4, 0x0

    :goto_1
    iget p5, p0, Lorg/objectweb/asm/h;->i:I

    if-ge p4, p5, :cond_2

    iget-object p5, p0, Lorg/objectweb/asm/h;->j:[I

    aget-object v0, p6, p4

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    aput v0, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-eqz p8, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p7, :cond_4

    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x2

    :goto_2
    iput p3, p0, Lorg/objectweb/asm/h;->T:I

    if-nez p7, :cond_5

    if-eqz p8, :cond_7

    :cond_5
    iget-object p3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    shr-int/lit8 p1, p3, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    iput p1, p0, Lorg/objectweb/asm/h;->v:I

    iput p1, p0, Lorg/objectweb/asm/h;->w:I

    new-instance p1, Lorg/objectweb/asm/Label;

    invoke-direct {p1}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    iget p2, p1, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lorg/objectweb/asm/Label;->a:I

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/h;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_7
    return-void
.end method

.method private b(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/objectweb/asm/h;->B:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/h;->B:[I

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/h;->B:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method static c([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static d([I[III)I
    .locals 3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget v2, p0, v1

    if-ge p2, v2, :cond_0

    aget v2, p0, v1

    if-gt v2, p3, :cond_0

    aget v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_0
    aget v2, p0, v1

    if-ge p3, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p2, :cond_1

    aget v2, p1, v1

    sub-int/2addr v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private e(II)V
    .locals 8

    :goto_0
    if-ge p1, p2, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/h;->B:[I

    aget v0, v0, p1

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/4 v2, 0x7

    const/high16 v3, 0x1700000

    const/high16 v4, 0xff00000

    const v5, 0xfffff

    if-nez v1, :cond_2

    and-int v1, v0, v5

    and-int/2addr v0, v4

    if-eq v0, v3, :cond_1

    const/high16 v2, 0x1800000

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, v2, Lorg/objectweb/asm/ClassWriter;->l:[Lorg/objectweb/asm/g;

    aget-object v1, v2, v1

    iget v1, v1, Lorg/objectweb/asm/g;->c:I

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v2, Lorg/objectweb/asm/ClassWriter;->l:[Lorg/objectweb/asm/g;

    aget-object v1, v3, v1

    iget-object v1, v1, Lorg/objectweb/asm/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v1, v1, 0x1c

    :goto_1
    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_3

    const/16 v1, 0x5b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v7

    goto :goto_1

    :cond_3
    and-int v1, v0, v4

    if-ne v1, v3, :cond_4

    const/16 v1, 0x4c

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v1, v1, Lorg/objectweb/asm/ClassWriter;->l:[Lorg/objectweb/asm/g;

    and-int/2addr v0, v5

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/objectweb/asm/g;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x4a

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x53

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x43

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x42

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_2

    :cond_5
    const/16 v0, 0x44

    goto :goto_2

    :cond_6
    const/16 v0, 0x46

    goto :goto_2

    :cond_7
    const/16 v0, 0x49

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(ILorg/objectweb/asm/Label;)V
    .locals 1

    new-instance v0, Lorg/objectweb/asm/c;

    invoke-direct {v0}, Lorg/objectweb/asm/c;-><init>()V

    iput p1, v0, Lorg/objectweb/asm/c;->a:I

    iput-object p2, v0, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    iget-object p1, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    iget-object p2, p1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iput-object p2, v0, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    return-void
.end method

.method private g(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lorg/objectweb/asm/Label;

    iget p1, p1, Lorg/objectweb/asm/Label;->c:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method private i(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/objectweb/asm/h;->T:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    const/16 v1, 0xab

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    invoke-direct {p0, v2, p1}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    invoke-virtual {p1}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object p1

    iget v0, p1, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lorg/objectweb/asm/Label;->a:I

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    invoke-direct {p0, v2, v0}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    aget-object v0, p2, p1

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    :goto_1
    array-length p1, p2

    if-ge v2, p1, :cond_1

    iget p1, p0, Lorg/objectweb/asm/h;->X:I

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/objectweb/asm/h;->r()V

    :cond_2
    return-void
.end method

.method static j([BII)V
    .locals 1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method static k([I[ILorg/objectweb/asm/Label;)V
    .locals 2

    iget v0, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p2, Lorg/objectweb/asm/Label;->c:I

    invoke-static {p0, p1, v0, v1}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result p0

    iput p0, p2, Lorg/objectweb/asm/Label;->c:I

    iget p0, p2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p2, Lorg/objectweb/asm/Label;->a:I

    :cond_0
    return-void
.end method

.method static l([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/h;->A:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    :cond_0
    invoke-direct {p0}, Lorg/objectweb/asm/h;->p()V

    iget v0, p0, Lorg/objectweb/asm/h;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/h;->x:I

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/h;->B:[I

    iput-object v0, p0, Lorg/objectweb/asm/h;->A:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/h;->B:[I

    return-void
.end method

.method private n(Lorg/objectweb/asm/e;)V
    .locals 10

    iget-object v0, p1, Lorg/objectweb/asm/e;->c:[I

    iget-object v1, p1, Lorg/objectweb/asm/e;->d:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    const v7, 0x1000003

    const v8, 0x1000004

    if-ge v3, v6, :cond_3

    aget v6, v0, v3

    const/high16 v9, 0x1000000

    add-int/lit8 v5, v5, 0x1

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1
    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_6

    aget v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lorg/objectweb/asm/e;->b:Lorg/objectweb/asm/Label;

    iget p1, p1, Lorg/objectweb/asm/Label;->c:I

    invoke-direct {p0, p1, v4, v5}, Lorg/objectweb/asm/h;->b(III)I

    move-result p1

    const/4 v3, 0x0

    :goto_3
    if-lez v4, :cond_9

    aget v5, v0, v3

    iget-object v6, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v9, p1, 0x1

    aput v5, v6, p1

    if-eq v5, v8, :cond_7

    if-ne v5, v7, :cond_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    move p1, v9

    goto :goto_3

    :cond_9
    :goto_4
    array-length v0, v1

    if-ge v2, v0, :cond_c

    aget v0, v1, v2

    iget-object v3, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v4, p1, 0x1

    aput v0, v3, p1

    if-eq v0, v8, :cond_a

    if-ne v0, v7, :cond_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lorg/objectweb/asm/h;->m()V

    return-void
.end method

.method static o([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private p()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/objectweb/asm/h;->B:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    iget-object v5, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v5, v5, Lorg/objectweb/asm/ClassWriter;->c:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/16 v8, 0x32

    if-ge v5, v8, :cond_0

    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    aget v1, v1, v6

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v3, v7

    invoke-direct {v0, v7, v3}, Lorg/objectweb/asm/h;->e(II)V

    iget-object v1, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v4, v3

    invoke-direct {v0, v3, v4}, Lorg/objectweb/asm/h;->e(II)V

    return-void

    :cond_0
    iget-object v5, v0, Lorg/objectweb/asm/h;->A:[I

    aget v8, v5, v2

    iget v9, v0, Lorg/objectweb/asm/h;->x:I

    if-nez v9, :cond_1

    aget v1, v1, v6

    goto :goto_0

    :cond_1
    aget v1, v1, v6

    aget v5, v5, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    :goto_0
    const/16 v5, 0xfc

    const/16 v9, 0xf8

    const/16 v10, 0xf7

    const/16 v11, 0x40

    const/16 v12, 0xff

    const/16 v13, 0xfb

    if-nez v4, :cond_3

    sub-int v2, v3, v8

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v14, 0xfc

    goto :goto_3

    :pswitch_1
    if-ge v1, v11, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    const/16 v14, 0xfb

    goto :goto_3

    :pswitch_2
    move v8, v3

    const/16 v14, 0xf8

    goto :goto_3

    :cond_3
    if-ne v3, v8, :cond_5

    if-ne v4, v2, :cond_5

    const/16 v2, 0x3f

    if-ge v1, v2, :cond_4

    const/16 v14, 0x40

    goto :goto_1

    :cond_4
    const/16 v14, 0xf7

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_2
    const/16 v14, 0xff

    :goto_3
    if-eq v14, v12, :cond_7

    const/4 v15, 0x3

    :goto_4
    if-ge v6, v8, :cond_7

    iget-object v7, v0, Lorg/objectweb/asm/h;->B:[I

    aget v7, v7, v15

    iget-object v12, v0, Lorg/objectweb/asm/h;->A:[I

    aget v12, v12, v15

    if-eq v7, v12, :cond_6

    const/16 v14, 0xff

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    const/16 v12, 0xff

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v14, :cond_d

    if-eq v14, v11, :cond_c

    if-eq v14, v10, :cond_b

    if-eq v14, v9, :cond_a

    if-eq v14, v13, :cond_9

    if-eq v14, v5, :cond_8

    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v5, 0x3

    add-int/2addr v3, v5

    invoke-direct {v0, v5, v3}, Lorg/objectweb/asm/h;->e(II)V

    iget-object v1, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v4, v3

    invoke-direct {v0, v3, v4}, Lorg/objectweb/asm/h;->e(II)V

    goto :goto_8

    :cond_8
    const/4 v5, 0x3

    iget-object v4, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v2, v13

    invoke-virtual {v4, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v8, v5

    add-int/2addr v3, v5

    invoke-direct {v0, v8, v3}, Lorg/objectweb/asm/h;->e(II)V

    goto :goto_8

    :cond_9
    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, v13}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    goto :goto_6

    :cond_a
    iget-object v3, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v2, v13

    invoke-virtual {v3, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    :goto_6
    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_8

    :cond_b
    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, v10}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v1, v11

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_7
    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lorg/objectweb/asm/h;->e(II)V

    goto :goto_8

    :cond_d
    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private q()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    const/4 v3, 0x0

    new-array v4, v3, [I

    new-array v5, v3, [I

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    new-array v1, v1, [Z

    const/4 v6, 0x3

    const/4 v7, 0x3

    :cond_0
    if-ne v7, v6, :cond_1

    const/4 v7, 0x2

    :cond_1
    const/4 v9, 0x0

    :cond_2
    :goto_0
    array-length v10, v2

    const/16 v13, 0xda

    const/16 v14, 0x84

    const/16 v15, 0xc9

    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x4

    if-ge v9, v10, :cond_e

    aget-byte v10, v2, v9

    and-int/lit16 v10, v10, 0xff

    sget-object v17, Lorg/objectweb/asm/ClassWriter;->a:[B

    aget-byte v17, v17, v10

    packed-switch v17, :pswitch_data_0

    :cond_3
    :pswitch_0
    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v8, v9, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    if-ne v8, v14, :cond_3

    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_9

    :pswitch_2
    if-ne v7, v11, :cond_4

    invoke-static {v4, v5, v3, v9}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v10

    and-int/2addr v10, v6

    neg-int v10, v10

    goto :goto_1

    :cond_4
    aget-boolean v10, v1, v9

    if-nez v10, :cond_5

    and-int/lit8 v10, v9, 0x3

    aput-boolean v11, v1, v9

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    add-int/lit8 v12, v9, 0x4

    and-int/lit8 v9, v9, 0x3

    sub-int/2addr v12, v9

    add-int/lit8 v9, v12, 0x4

    invoke-static {v2, v9}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v9

    mul-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v8

    add-int/2addr v12, v9

    move v9, v12

    goto/16 :goto_a

    :pswitch_3
    if-ne v7, v11, :cond_6

    invoke-static {v4, v5, v3, v9}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v8

    and-int/2addr v8, v6

    neg-int v8, v8

    :goto_2
    move v10, v8

    goto :goto_3

    :cond_6
    aget-boolean v8, v1, v9

    if-nez v8, :cond_7

    and-int/lit8 v8, v9, 0x3

    aput-boolean v11, v1, v9

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v8, v9, 0x4

    and-int/lit8 v9, v9, 0x3

    sub-int/2addr v8, v9

    add-int/lit8 v9, v8, 0x8

    invoke-static {v2, v9}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v9

    add-int/lit8 v13, v8, 0x4

    invoke-static {v2, v13}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v13

    sub-int/2addr v9, v13

    add-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    move v9, v8

    goto :goto_a

    :pswitch_4
    if-le v10, v15, :cond_9

    if-ge v10, v13, :cond_8

    add-int/lit8 v10, v10, -0x31

    goto :goto_4

    :cond_8
    add-int/lit8 v10, v10, -0x14

    :goto_4
    add-int/lit8 v8, v9, 0x1

    invoke-static {v2, v8}, Lorg/objectweb/asm/h;->o([BI)I

    move-result v8

    goto :goto_5

    :cond_9
    add-int/lit8 v8, v9, 0x1

    invoke-static {v2, v8}, Lorg/objectweb/asm/h;->l([BI)S

    move-result v8

    :goto_5
    add-int/2addr v8, v9

    invoke-static {v4, v5, v9, v8}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v8

    const/16 v12, -0x8000

    if-lt v8, v12, :cond_a

    const/16 v12, 0x7fff

    if-le v8, v12, :cond_d

    :cond_a
    aget-boolean v8, v1, v9

    if-nez v8, :cond_d

    const/16 v8, 0xa7

    if-eq v10, v8, :cond_c

    const/16 v8, 0xa8

    if-ne v10, v8, :cond_b

    goto :goto_6

    :cond_b
    const/16 v16, 0x5

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v16, 0x2

    :goto_7
    aput-boolean v11, v1, v9

    move/from16 v10, v16

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    add-int/lit8 v9, v9, 0x3

    goto :goto_a

    :pswitch_5
    add-int/lit8 v9, v9, 0x5

    goto :goto_9

    :pswitch_6
    add-int/lit8 v9, v9, 0x3

    goto :goto_9

    :pswitch_7
    add-int/lit8 v9, v9, 0x2

    goto :goto_9

    :pswitch_8
    add-int/lit8 v9, v9, 0x1

    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_2

    array-length v8, v4

    add-int/2addr v8, v11

    new-array v8, v8, [I

    array-length v12, v5

    add-int/2addr v12, v11

    new-array v11, v12, [I

    array-length v12, v4

    invoke-static {v4, v3, v8, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v5

    invoke-static {v5, v3, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    aput v9, v8, v4

    array-length v4, v5

    aput v10, v11, v4

    move-object v4, v8

    move-object v5, v11

    if-lez v10, :cond_2

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_e
    if-ge v7, v6, :cond_f

    add-int/lit8 v7, v7, -0x1

    :cond_f
    if-nez v7, :cond_0

    new-instance v7, Lorg/objectweb/asm/ByteVector;

    iget-object v9, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v9, v9, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-direct {v7, v9}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    const/4 v9, 0x0

    :goto_b
    iget-object v10, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v10, v10, Lorg/objectweb/asm/ByteVector;->b:I

    if-ge v9, v10, :cond_18

    aget-byte v10, v2, v9

    and-int/lit16 v10, v10, 0xff

    sget-object v17, Lorg/objectweb/asm/ClassWriter;->a:[B

    aget-byte v17, v17, v10

    const/4 v6, 0x0

    packed-switch v17, :pswitch_data_1

    :pswitch_9
    const/4 v6, 0x5

    invoke-virtual {v7, v2, v9, v12}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_14

    :pswitch_a
    add-int/lit8 v6, v9, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v14, :cond_10

    const/4 v6, 0x6

    invoke-virtual {v7, v2, v9, v6}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x6

    goto/16 :goto_e

    :cond_10
    invoke-virtual {v7, v2, v9, v12}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_e

    :pswitch_b
    add-int/lit8 v10, v9, 0x4

    and-int/lit8 v17, v9, 0x3

    sub-int v10, v10, v17

    const/16 v14, 0xab

    invoke-virtual {v7, v14}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget v14, v7, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/2addr v14, v12

    rsub-int/lit8 v14, v14, 0x4

    rem-int/2addr v14, v12

    invoke-virtual {v7, v6, v3, v14}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    add-int/2addr v6, v9

    add-int/2addr v10, v12

    invoke-static {v4, v5, v9, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    add-int/2addr v10, v12

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_c
    if-lez v6, :cond_11

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v14

    invoke-virtual {v7, v14}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v10, v10, 0x4

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v14

    add-int/2addr v14, v9

    add-int/2addr v10, v12

    invoke-static {v4, v5, v9, v14}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v14

    invoke-virtual {v7, v14}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :pswitch_c
    add-int/lit8 v10, v9, 0x4

    and-int/lit8 v14, v9, 0x3

    sub-int/2addr v10, v14

    const/16 v14, 0xaa

    invoke-virtual {v7, v14}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget v14, v7, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/2addr v14, v12

    rsub-int/lit8 v14, v14, 0x4

    rem-int/2addr v14, v12

    invoke-virtual {v7, v6, v3, v14}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    add-int/2addr v6, v9

    add-int/2addr v10, v12

    invoke-static {v4, v5, v9, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    add-int/2addr v10, v12

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v14

    sub-int/2addr v14, v6

    add-int/2addr v14, v11

    add-int/2addr v10, v12

    add-int/lit8 v6, v10, -0x4

    invoke-static {v2, v6}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_d
    if-lez v14, :cond_11

    invoke-static {v2, v10}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    add-int/2addr v6, v9

    add-int/lit8 v10, v10, 0x4

    invoke-static {v4, v5, v9, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v14, v14, -0x1

    goto :goto_d

    :cond_11
    move v9, v10

    goto :goto_e

    :pswitch_d
    add-int/lit8 v6, v9, 0x1

    invoke-static {v2, v6}, Lorg/objectweb/asm/h;->c([BI)I

    move-result v6

    add-int/2addr v6, v9

    invoke-static {v4, v5, v9, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    invoke-virtual {v7, v10}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x5

    :goto_e
    const/4 v6, 0x5

    goto/16 :goto_14

    :pswitch_e
    if-le v10, v15, :cond_13

    if-ge v10, v13, :cond_12

    add-int/lit8 v10, v10, -0x31

    goto :goto_f

    :cond_12
    add-int/lit8 v10, v10, -0x14

    :goto_f
    add-int/lit8 v6, v9, 0x1

    invoke-static {v2, v6}, Lorg/objectweb/asm/h;->o([BI)I

    move-result v6

    goto :goto_10

    :cond_13
    add-int/lit8 v6, v9, 0x1

    invoke-static {v2, v6}, Lorg/objectweb/asm/h;->l([BI)S

    move-result v6

    :goto_10
    add-int/2addr v6, v9

    invoke-static {v4, v5, v9, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    aget-boolean v14, v1, v9

    if-eqz v14, :cond_17

    const/16 v14, 0xc8

    const/16 v13, 0xa7

    if-ne v10, v13, :cond_14

    invoke-virtual {v7, v14}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/16 v13, 0xa8

    goto :goto_12

    :cond_14
    const/16 v13, 0xa8

    if-ne v10, v13, :cond_15

    invoke-virtual {v7, v15}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_12

    :cond_15
    const/16 v13, 0xa6

    if-gt v10, v13, :cond_16

    add-int/lit8 v10, v10, 0x1

    xor-int/2addr v10, v11

    sub-int/2addr v10, v11

    goto :goto_11

    :cond_16
    xor-int/lit8 v10, v10, 0x1

    :goto_11
    invoke-virtual {v7, v10}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v7, v14}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v6, v6, -0x3

    :goto_12
    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_13

    :cond_17
    invoke-virtual {v7, v10}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v7, v6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_13
    add-int/lit8 v9, v9, 0x3

    goto :goto_e

    :pswitch_f
    const/4 v6, 0x5

    invoke-virtual {v7, v2, v9, v6}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x5

    goto :goto_14

    :pswitch_10
    const/4 v6, 0x5

    const/4 v10, 0x3

    invoke-virtual {v7, v2, v9, v10}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x3

    goto :goto_14

    :pswitch_11
    const/4 v6, 0x5

    const/4 v10, 0x2

    invoke-virtual {v7, v2, v9, v10}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x2

    goto :goto_14

    :pswitch_12
    const/4 v6, 0x5

    invoke-virtual {v7, v10}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v9, v9, 0x1

    :goto_14
    const/4 v6, 0x3

    const/16 v13, 0xda

    const/16 v14, 0x84

    goto/16 :goto_b

    :cond_18
    iget v2, v0, Lorg/objectweb/asm/h;->T:I

    if-nez v2, :cond_1c

    iget-object v2, v0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    :goto_15
    if-eqz v2, :cond_1a

    iget v6, v2, Lorg/objectweb/asm/Label;->c:I

    const/4 v8, 0x3

    sub-int/2addr v6, v8

    if-ltz v6, :cond_19

    aget-boolean v6, v1, v6

    if-eqz v6, :cond_19

    iget v6, v2, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v2, Lorg/objectweb/asm/Label;->a:I

    :cond_19
    invoke-static {v4, v5, v2}, Lorg/objectweb/asm/h;->k([I[ILorg/objectweb/asm/Label;)V

    iget-object v2, v2, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_15

    :cond_1a
    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v1, v1, Lorg/objectweb/asm/ClassWriter;->l:[Lorg/objectweb/asm/g;

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    :goto_16
    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, v2, Lorg/objectweb/asm/ClassWriter;->l:[Lorg/objectweb/asm/g;

    array-length v6, v2

    if-ge v1, v6, :cond_1d

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    iget v6, v2, Lorg/objectweb/asm/g;->b:I

    const/16 v8, 0x1f

    if-ne v6, v8, :cond_1b

    iget v6, v2, Lorg/objectweb/asm/g;->c:I

    invoke-static {v4, v5, v3, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    iput v6, v2, Lorg/objectweb/asm/g;->c:I

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1c
    iget v1, v0, Lorg/objectweb/asm/h;->x:I

    if-lez v1, :cond_1d

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iput-boolean v11, v1, Lorg/objectweb/asm/ClassWriter;->N:Z

    :cond_1d
    iget-object v1, v0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    :goto_17
    if-eqz v1, :cond_1e

    iget-object v2, v1, Lorg/objectweb/asm/f;->a:Lorg/objectweb/asm/Label;

    invoke-static {v4, v5, v2}, Lorg/objectweb/asm/h;->k([I[ILorg/objectweb/asm/Label;)V

    iget-object v2, v1, Lorg/objectweb/asm/f;->b:Lorg/objectweb/asm/Label;

    invoke-static {v4, v5, v2}, Lorg/objectweb/asm/h;->k([I[ILorg/objectweb/asm/Label;)V

    iget-object v2, v1, Lorg/objectweb/asm/f;->c:Lorg/objectweb/asm/Label;

    invoke-static {v4, v5, v2}, Lorg/objectweb/asm/h;->k([I[ILorg/objectweb/asm/Label;)V

    iget-object v1, v1, Lorg/objectweb/asm/f;->f:Lorg/objectweb/asm/f;

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_18
    if-ge v1, v2, :cond_21

    if-nez v1, :cond_1f

    iget-object v6, v0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    goto :goto_19

    :cond_1f
    iget-object v6, v0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    :goto_19
    if-eqz v6, :cond_20

    iget-object v8, v6, Lorg/objectweb/asm/ByteVector;->a:[B

    const/4 v9, 0x0

    :goto_1a
    iget v10, v6, Lorg/objectweb/asm/ByteVector;->b:I

    if-ge v9, v10, :cond_20

    invoke-static {v8, v9}, Lorg/objectweb/asm/h;->o([BI)I

    move-result v10

    invoke-static {v4, v5, v3, v10}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v12

    invoke-static {v8, v9, v12}, Lorg/objectweb/asm/h;->j([BII)V

    add-int/lit8 v13, v9, 0x2

    invoke-static {v8, v13}, Lorg/objectweb/asm/h;->o([BI)I

    move-result v14

    add-int/2addr v10, v14

    invoke-static {v4, v5, v3, v10}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v10

    sub-int/2addr v10, v12

    invoke-static {v8, v13, v10}, Lorg/objectweb/asm/h;->j([BII)V

    add-int/lit8 v9, v9, 0xa

    goto :goto_1a

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_21
    iget-object v1, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    :goto_1b
    iget-object v6, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    iget v6, v6, Lorg/objectweb/asm/ByteVector;->b:I

    if-ge v2, v6, :cond_22

    invoke-static {v1, v2}, Lorg/objectweb/asm/h;->o([BI)I

    move-result v6

    invoke-static {v4, v5, v3, v6}, Lorg/objectweb/asm/h;->d([I[III)I

    move-result v6

    invoke-static {v1, v2, v6}, Lorg/objectweb/asm/h;->j([BII)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_1b

    :cond_22
    iget-object v1, v0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    :goto_1c
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->getLabels()[Lorg/objectweb/asm/Label;

    move-result-object v2

    if-eqz v2, :cond_23

    array-length v3, v2

    sub-int/2addr v3, v11

    :goto_1d
    if-ltz v3, :cond_23

    aget-object v6, v2, v3

    invoke-static {v4, v5, v6}, Lorg/objectweb/asm/h;->k([I[ILorg/objectweb/asm/Label;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_23
    iget-object v1, v1, Lorg/objectweb/asm/Attribute;->b:Lorg/objectweb/asm/Attribute;

    goto :goto_1c

    :cond_24
    iput-object v7, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private r()V
    .locals 3

    iget v0, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    new-instance v1, Lorg/objectweb/asm/e;

    invoke-direct {v1}, Lorg/objectweb/asm/e;-><init>()V

    iput-object v1, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iput-object v0, v1, Lorg/objectweb/asm/e;->b:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v2, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {v0, p0, v2, v1}, Lorg/objectweb/asm/Label;->g(Lorg/objectweb/asm/h;I[B)Z

    iget-object v1, p0, Lorg/objectweb/asm/h;->V:Lorg/objectweb/asm/Label;

    iput-object v0, v1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/h;->V:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/h;->Y:I

    iput v1, v0, Lorg/objectweb/asm/Label;->g:I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    return-void
.end method

.method private s()V
    .locals 10

    iget-object v0, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2}, Lorg/objectweb/asm/h;->b(III)I

    move-result v0

    iget v2, p0, Lorg/objectweb/asm/h;->b:I

    and-int/lit8 v3, v2, 0x8

    const/high16 v4, 0x1700000

    if-nez v3, :cond_1

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v6, v5, Lorg/objectweb/asm/ClassWriter;->p:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v4

    aput v5, v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x6

    aput v5, v2, v0

    :goto_0
    move v0, v3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x46

    if-eq v3, v6, :cond_9

    const/16 v6, 0x3b

    const/16 v7, 0x4c

    if-eq v3, v7, :cond_7

    const/16 v8, 0x53

    if-eq v3, v8, :cond_6

    const/16 v8, 0x49

    if-eq v3, v8, :cond_6

    const/16 v8, 0x4a

    if-eq v3, v8, :cond_5

    const/16 v8, 0x5a

    if-eq v3, v8, :cond_6

    const/16 v8, 0x5b

    if-eq v3, v8, :cond_2

    const/4 v2, 0x3

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lorg/objectweb/asm/h;->B:[I

    sub-int/2addr v0, v2

    aput v0, v3, v1

    invoke-direct {p0}, Lorg/objectweb/asm/h;->m()V

    return-void

    :pswitch_0
    iget-object v3, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v6, v0, 0x1

    aput v2, v3, v0

    :goto_2
    move v2, v5

    move v0, v6

    goto :goto_1

    :cond_2
    :goto_3
    iget-object v3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4

    :goto_4
    add-int/lit8 v5, v5, 0x1

    iget-object v3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v8, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    add-int/2addr v5, v1

    invoke-virtual {v8, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v4

    aput v2, v3, v0

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, v0, 0x1

    const/4 v6, 0x4

    aput v6, v2, v0

    goto :goto_5

    :cond_6
    :pswitch_1
    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, v0, 0x1

    aput v1, v2, v0

    :goto_5
    move v0, v3

    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_6
    iget-object v3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v8, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v4

    aput v2, v3, v0

    move v0, v6

    move v2, v9

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, v0, 0x1

    const/4 v6, 0x2

    aput v6, v2, v0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a()I
    .locals 14

    iget v0, p0, Lorg/objectweb/asm/h;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/h;->h:I

    add-int/lit8 v0, v0, 0x6

    return v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const v3, 0xffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-lez v0, :cond_a

    const/high16 v7, 0x10000

    if-gt v0, v7, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "Code"

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v7, p0, Lorg/objectweb/asm/h;->C:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    iget-object v7, p0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_1
    iget-object v7, p0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v8, "LocalVariableTypeTable"

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_2
    iget-object v7, p0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v8, "LineNumberTable"

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_3
    iget-object v7, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v8, v7, Lorg/objectweb/asm/ClassWriter;->c:I

    and-int/2addr v8, v3

    const/16 v9, 0x32

    if-lt v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_5

    const-string v8, "StackMapTable"

    goto :goto_1

    :cond_5
    const-string v8, "StackMap"

    :goto_1
    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_6
    iget-object v7, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v7, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    invoke-virtual {v7}, Lorg/objectweb/asm/a;->a()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_7
    iget-object v7, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v7, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v7, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    invoke-virtual {v7}, Lorg/objectweb/asm/a;->a()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_8
    iget-object v7, p0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    if-eqz v7, :cond_b

    iget-object v8, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v9, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v10, v9, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v11, v9, Lorg/objectweb/asm/ByteVector;->b:I

    iget v12, p0, Lorg/objectweb/asm/h;->u:I

    iget v13, p0, Lorg/objectweb/asm/h;->v:I

    move-object v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    invoke-virtual/range {v7 .. v12}, Lorg/objectweb/asm/Attribute;->b(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v0, 0x8

    :cond_b
    :goto_2
    iget v7, p0, Lorg/objectweb/asm/h;->i:I

    if-lez v7, :cond_c

    iget-object v7, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v8, "Exceptions"

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget v7, p0, Lorg/objectweb/asm/h;->i:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_c
    iget v7, p0, Lorg/objectweb/asm/h;->b:I

    and-int/lit16 v8, v7, 0x1000

    if-eqz v8, :cond_e

    iget-object v8, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v9, v8, Lorg/objectweb/asm/ClassWriter;->c:I

    and-int/2addr v3, v9

    const/16 v9, 0x31

    if-lt v3, v9, :cond_d

    const/high16 v3, 0x40000

    and-int/2addr v3, v7

    if-eqz v3, :cond_e

    :cond_d
    const-string v3, "Synthetic"

    invoke-virtual {v8, v3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_e
    iget v3, p0, Lorg/objectweb/asm/h;->b:I

    const/high16 v7, 0x20000

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "Deprecated"

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_f
    iget-object v3, p0, Lorg/objectweb/asm/h;->f:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "Signature"

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v7, p0, Lorg/objectweb/asm/h;->f:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_10
    iget-object v3, p0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "MethodParameters"

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v3, p0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    :cond_11
    iget-object v3, p0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "AnnotationDefault"

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v3, p0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    :cond_12
    iget-object v3, p0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "RuntimeVisibleAnnotations"

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v3, p0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    invoke-virtual {v3}, Lorg/objectweb/asm/a;->a()I

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v0, v3

    :cond_13
    iget-object v3, p0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v7, "RuntimeInvisibleAnnotations"

    invoke-virtual {v3, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v3, p0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    invoke-virtual {v3}, Lorg/objectweb/asm/a;->a()I

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v0, v3

    :cond_14
    iget-object v3, p0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v3, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v2, p0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    invoke-virtual {v2}, Lorg/objectweb/asm/a;->a()I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    invoke-virtual {v1}, Lorg/objectweb/asm/a;->a()I

    move-result v1

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    array-length v2, v1

    iget v3, p0, Lorg/objectweb/asm/h;->r:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    array-length v1, v1

    sub-int/2addr v1, v4

    :goto_3
    iget v2, p0, Lorg/objectweb/asm/h;->r:I

    if-lt v1, v2, :cond_18

    iget-object v2, p0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    aget-object v3, v2, v1

    if-nez v3, :cond_17

    const/4 v2, 0x0

    goto :goto_4

    :cond_17
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/objectweb/asm/a;->a()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_18
    iget-object v1, p0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    array-length v2, v1

    iget v3, p0, Lorg/objectweb/asm/h;->r:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    array-length v1, v1

    sub-int/2addr v1, v4

    :goto_5
    iget v2, p0, Lorg/objectweb/asm/h;->r:I

    if-lt v1, v2, :cond_1a

    iget-object v2, p0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    aget-object v3, v2, v1

    if-nez v3, :cond_19

    const/4 v2, 0x0

    goto :goto_6

    :cond_19
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/objectweb/asm/a;->a()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1a
    iget-object v1, p0, Lorg/objectweb/asm/h;->s:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/Attribute;->b(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    return v0
.end method

.method final h(Lorg/objectweb/asm/ByteVector;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget v1, v0, Lorg/objectweb/asm/h;->b:I

    const/high16 v9, 0x40000

    and-int v2, v1, v9

    div-int/lit8 v2, v2, 0x40

    const/high16 v3, 0xe0000

    or-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->c:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->d:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/h;->g:I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, v2, Lorg/objectweb/asm/ClassWriter;->b:Lorg/objectweb/asm/ClassReader;

    iget-object v2, v2, Lorg/objectweb/asm/ClassReader;->b:[B

    iget v3, v0, Lorg/objectweb/asm/h;->h:I

    invoke-virtual {v8, v2, v1, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_0
    iget-object v1, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    const/4 v10, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lorg/objectweb/asm/h;->i:I

    if-lez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, v0, Lorg/objectweb/asm/h;->b:I

    and-int/lit16 v3, v2, 0x1000

    const/16 v12, 0x31

    const v13, 0xffff

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v3, v3, Lorg/objectweb/asm/ClassWriter;->c:I

    and-int/2addr v3, v13

    if-lt v3, v12, :cond_3

    and-int v3, v2, v9

    if-eqz v3, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    const/high16 v14, 0x20000

    and-int/2addr v2, v14

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-object v2, v0, Lorg/objectweb/asm/h;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-object v2, v0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    iget-object v2, v0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    iget-object v2, v0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget-object v2, v0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    iget-object v2, v0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    iget-object v2, v0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    iget-object v2, v0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    iget-object v2, v0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    iget-object v2, v0, Lorg/objectweb/asm/h;->s:Lorg/objectweb/asm/Attribute;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lorg/objectweb/asm/Attribute;->a()I

    move-result v2

    add-int/2addr v1, v2

    :cond_f
    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    const-string v15, "RuntimeInvisibleTypeAnnotations"

    const-string v7, "RuntimeVisibleTypeAnnotations"

    const/4 v6, 0x2

    if-lez v1, :cond_27

    add-int/lit8 v1, v1, 0xc

    iget v2, v0, Lorg/objectweb/asm/h;->C:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, v0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_10

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_10
    iget-object v2, v0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_11

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_11
    iget-object v2, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_12

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_12
    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_13

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_13
    iget-object v2, v0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lorg/objectweb/asm/a;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_14
    iget-object v2, v0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lorg/objectweb/asm/a;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    :cond_15
    iget-object v2, v0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    if-eqz v2, :cond_16

    iget-object v3, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v4, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v5, v4, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->b:I

    iget v11, v0, Lorg/objectweb/asm/h;->u:I

    iget v14, v0, Lorg/objectweb/asm/h;->v:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v11

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lorg/objectweb/asm/Attribute;->b(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/h;->u:I

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->v:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v3, v2, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v1, v3, v10, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/h;->C:I

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/h;->C:I

    if-lez v1, :cond_17

    iget-object v1, v0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    :goto_1
    if-eqz v1, :cond_17

    iget-object v2, v1, Lorg/objectweb/asm/f;->a:Lorg/objectweb/asm/Label;

    iget v2, v2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v8, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    iget-object v3, v1, Lorg/objectweb/asm/f;->b:Lorg/objectweb/asm/Label;

    iget v3, v3, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    iget-object v3, v1, Lorg/objectweb/asm/f;->c:Lorg/objectweb/asm/Label;

    iget v3, v3, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    iget v3, v1, Lorg/objectweb/asm/f;->e:I

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/f;->f:Lorg/objectweb/asm/f;

    goto :goto_1

    :cond_17
    iget-object v1, v0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_2

    :cond_18
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_19

    add-int/lit8 v1, v1, 0x1

    :cond_19
    iget-object v2, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    iget-object v2, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    :cond_1b
    iget-object v2, v0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    iget-object v2, v0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    if-eqz v2, :cond_1d

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    iget-object v2, v0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lorg/objectweb/asm/Attribute;->a()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1e
    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->H:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v2, v10, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1f
    iget-object v1, v0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->J:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v2, v10, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_20
    iget-object v1, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->L:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v2, v10, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_21
    iget-object v1, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v2, v1, Lorg/objectweb/asm/ClassWriter;->c:I

    and-int/2addr v2, v13

    const/16 v3, 0x32

    if-lt v2, v3, :cond_22

    const/4 v2, 0x1

    goto :goto_3

    :cond_22
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_23

    const-string v2, "StackMapTable"

    goto :goto_4

    :cond_23
    const-string v2, "StackMap"

    :goto_4
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->x:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v2, v10, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_24
    iget-object v1, v0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, v7}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/a;->c(Lorg/objectweb/asm/ByteVector;)V

    :cond_25
    iget-object v1, v0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/a;->c(Lorg/objectweb/asm/ByteVector;)V

    :cond_26
    iget-object v1, v0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_27

    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v4, v3, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v5, v3, Lorg/objectweb/asm/ByteVector;->b:I

    iget v11, v0, Lorg/objectweb/asm/h;->v:I

    iget v14, v0, Lorg/objectweb/asm/h;->u:I

    move-object v3, v4

    move v4, v5

    move v5, v11

    const/4 v11, 0x2

    move v6, v14

    move-object v14, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/objectweb/asm/Attribute;->c(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    goto :goto_5

    :cond_27
    move-object v14, v7

    const/4 v11, 0x2

    :goto_5
    iget v1, v0, Lorg/objectweb/asm/h;->i:I

    if-lez v1, :cond_28

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->i:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/h;->i:I

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x0

    :goto_6
    iget v2, v0, Lorg/objectweb/asm/h;->i:I

    if-ge v1, v2, :cond_28

    iget-object v2, v0, Lorg/objectweb/asm/h;->j:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    iget v1, v0, Lorg/objectweb/asm/h;->b:I

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v3, v2, Lorg/objectweb/asm/ClassWriter;->c:I

    and-int/2addr v3, v13

    if-lt v3, v12, :cond_29

    and-int/2addr v1, v9

    if-eqz v1, :cond_2a

    :cond_29
    const-string v1, "Synthetic"

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_2a
    iget v1, v0, Lorg/objectweb/asm/h;->b:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_2b
    iget-object v1, v0, Lorg/objectweb/asm/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v0, Lorg/objectweb/asm/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_2c
    iget-object v1, v0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/h;->F:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v2, v10, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_2d
    iget-object v1, v0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-virtual {v8, v2, v10, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_2e
    iget-object v1, v0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/a;->c(Lorg/objectweb/asm/ByteVector;)V

    :cond_2f
    iget-object v1, v0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    if-eqz v1, :cond_30

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/a;->c(Lorg/objectweb/asm/ByteVector;)V

    :cond_30
    iget-object v1, v0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, v14}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/a;->c(Lorg/objectweb/asm/ByteVector;)V

    :cond_31
    iget-object v1, v0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    if-eqz v1, :cond_32

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, v15}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    invoke-virtual {v1, v8}, Lorg/objectweb/asm/a;->c(Lorg/objectweb/asm/ByteVector;)V

    :cond_32
    iget-object v1, v0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    if-eqz v1, :cond_33

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    iget v2, v0, Lorg/objectweb/asm/h;->r:I

    invoke-static {v1, v2, v8}, Lorg/objectweb/asm/a;->d([Lorg/objectweb/asm/a;ILorg/objectweb/asm/ByteVector;)V

    :cond_33
    iget-object v1, v0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, v0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    iget v2, v0, Lorg/objectweb/asm/h;->r:I

    invoke-static {v1, v2, v8}, Lorg/objectweb/asm/a;->d([Lorg/objectweb/asm/a;ILorg/objectweb/asm/ByteVector;)V

    :cond_34
    iget-object v1, v0, Lorg/objectweb/asm/h;->s:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_35

    iget-object v2, v0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/objectweb/asm/Attribute;->c(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_35
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance p1, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->l:Lorg/objectweb/asm/a;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->m:Lorg/objectweb/asm/a;

    :goto_0
    return-object p1
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .locals 7

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v3, p0, Lorg/objectweb/asm/h;->k:Lorg/objectweb/asm/ByteVector;

    new-instance v6, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    return-object v6
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->b:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/h;->Q:Lorg/objectweb/asm/Attribute;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->s:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->b:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/h;->s:Lorg/objectweb/asm/Attribute;

    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/g;

    move-result-object p2

    iget-object p3, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz p3, :cond_9

    iget v0, p0, Lorg/objectweb/asm/h;->T:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p3, p3, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget-object p4, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p3, p1, v1, p4, p2}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/4 p4, 0x1

    const/4 v0, -0x2

    const/16 v2, 0x4a

    const/16 v3, 0x44

    packed-switch p1, :pswitch_data_0

    iget p4, p0, Lorg/objectweb/asm/h;->X:I

    if-eq p3, v3, :cond_7

    if-ne p3, v2, :cond_4

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    if-eq p3, v3, :cond_1

    if-ne p3, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    goto :goto_2

    :pswitch_1
    iget p4, p0, Lorg/objectweb/asm/h;->X:I

    if-eq p3, v3, :cond_4

    if-ne p3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :cond_4
    :goto_0
    add-int/2addr v0, p4

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    if-eq p3, v3, :cond_5

    if-ne p3, v2, :cond_6

    :cond_5
    const/4 p4, 0x2

    :cond_6
    add-int/2addr v0, p4

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, -0x3

    goto :goto_0

    :goto_2
    iget p3, p0, Lorg/objectweb/asm/h;->Y:I

    if-le v0, p3, :cond_8

    iput v0, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_8
    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :cond_9
    :goto_3
    iget-object p3, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p2, p2, Lorg/objectweb/asm/g;->a:I

    invoke-virtual {p3, p1, p2}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lorg/objectweb/asm/h;->A:[I

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/objectweb/asm/h;->s()V

    :cond_1
    iput p2, p0, Lorg/objectweb/asm/h;->w:I

    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p1, p1, Lorg/objectweb/asm/ByteVector;->b:I

    invoke-direct {p0, p1, p2, p4}, Lorg/objectweb/asm/h;->b(III)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const-string v2, ""

    const/high16 v3, 0x1800000

    const/high16 v4, 0x1700000

    if-ge v0, p2, :cond_4

    aget-object v5, p3, v0

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    aget-object v6, p3, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, p1

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_2
    aget-object v4, p3, v0

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v3, p1, 0x1

    aget-object v4, p3, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, p1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    aget-object v7, p3, v0

    check-cast v7, Lorg/objectweb/asm/Label;

    iget v7, v7, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v6, v2, v7}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v2, v3

    aput v2, v4, p1

    move p1, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-ge v1, p4, :cond_7

    aget-object p2, p5, v1

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 p3, p1, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    aget-object v5, p5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v4

    aput v0, p2, p1

    :goto_4
    move p1, p3

    goto :goto_5

    :cond_5
    aget-object p2, p5, v1

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 p3, p1, 0x1

    aget-object v0, p5, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, p1

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lorg/objectweb/asm/h;->B:[I

    add-int/lit8 p3, p1, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    aget-object v5, p5, v1

    check-cast v5, Lorg/objectweb/asm/Label;

    iget v5, v5, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v0, v2, v5}, Lorg/objectweb/asm/ClassWriter;->c(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v3

    aput v0, p2, p1

    goto :goto_4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lorg/objectweb/asm/h;->m()V

    goto/16 :goto_c

    :cond_8
    iget-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_9

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iget v4, p0, Lorg/objectweb/asm/h;->z:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    if-gez v0, :cond_b

    if-ne p1, v2, :cond_a

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_b
    :goto_6
    if-eqz p1, :cond_12

    if-eq p1, v3, :cond_11

    const/4 p3, 0x2

    const/16 v4, 0xfb

    if-eq p1, p3, :cond_f

    const/16 p2, 0x40

    if-eq p1, v2, :cond_e

    const/4 p3, 0x4

    if-eq p1, p3, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object p1, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-ge v0, p2, :cond_d

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_7

    :cond_d
    const/16 p2, 0xf7

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_7
    aget-object p1, p5, v1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/h;->g(Ljava/lang/Object;)V

    goto :goto_b

    :cond_e
    iget-object p1, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    if-ge v0, p2, :cond_10

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_b

    :cond_f
    iget p1, p0, Lorg/objectweb/asm/h;->w:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/objectweb/asm/h;->w:I

    iget-object p1, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    sub-int/2addr v4, p2

    :cond_10
    invoke-virtual {p1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_b

    :cond_11
    iget p1, p0, Lorg/objectweb/asm/h;->w:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/objectweb/asm/h;->w:I

    iget-object p1, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 p5, p2, 0xfb

    invoke-virtual {p1, p5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_8
    if-ge v1, p2, :cond_14

    aget-object p1, p3, v1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/h;->g(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    iput p2, p0, Lorg/objectweb/asm/h;->w:I

    iget-object p1, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xff

    invoke-virtual {p1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    :goto_9
    if-ge p1, p2, :cond_13

    aget-object v0, p3, p1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/h;->g(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_13
    iget-object p1, p0, Lorg/objectweb/asm/h;->y:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_a
    if-ge v1, p4, :cond_14

    aget-object p1, p5, v1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/h;->g(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    :goto_b
    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p1, p1, Lorg/objectweb/asm/ByteVector;->b:I

    iput p1, p0, Lorg/objectweb/asm/h;->z:I

    iget p1, p0, Lorg/objectweb/asm/h;->x:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/objectweb/asm/h;->x:I

    :goto_c
    iget p1, p0, Lorg/objectweb/asm/h;->u:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/objectweb/asm/h;->u:I

    iget p1, p0, Lorg/objectweb/asm/h;->v:I

    iget p2, p0, Lorg/objectweb/asm/h;->w:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/objectweb/asm/h;->v:I

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/16 v1, 0x84

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v2, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->T:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lorg/objectweb/asm/h;->v:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lorg/objectweb/asm/h;->v:I

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_3

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_3

    const/16 v0, -0x80

    if-ge p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_1
    return-void
.end method

.method public visitInsn(I)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v1, p0, Lorg/objectweb/asm/h;->N:I

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_4

    iget v1, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    sget-object v1, Lorg/objectweb/asm/e;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/h;->Y:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_1
    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :goto_0
    const/16 v0, 0xac

    if-lt p1, v0, :cond_2

    const/16 v0, 0xb1

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/objectweb/asm/h;->r()V

    :cond_4
    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const v0, -0xffff01

    and-int/2addr p1, v0

    iget v0, p0, Lorg/objectweb/asm/h;->N:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    invoke-static {p1, p2, v4}, Lorg/objectweb/asm/a;->b(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object p1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance p1, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget p2, v4, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    :goto_0
    return-object p1
.end method

.method public visitIntInsn(II)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_2

    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/objectweb/asm/h;->Y:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_1
    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    :goto_1
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->n(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/g;

    move-result-object p1

    iget p3, p1, Lorg/objectweb/asm/g;->c:I

    iget-object p4, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/4 v0, 0x0

    const/16 v1, 0xba

    if-eqz p4, :cond_3

    iget v2, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v2, :cond_0

    iget-object p2, p4, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget-object p3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p2, v1, v0, p3, p1}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lorg/objectweb/asm/g;->c:I

    :cond_1
    iget p2, p0, Lorg/objectweb/asm/h;->X:I

    shr-int/lit8 p4, p3, 0x2

    sub-int/2addr p2, p4

    and-int/lit8 p3, p3, 0x3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    iget p3, p0, Lorg/objectweb/asm/h;->Y:I

    if-le p2, p3, :cond_2

    iput p2, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_2
    iput p2, p0, Lorg/objectweb/asm/h;->X:I

    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p1, p1, Lorg/objectweb/asm/g;->a:I

    invoke-virtual {p2, v1, p1}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 8

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/16 v1, 0xa8

    const/16 v2, 0xa7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget v6, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v6, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    invoke-virtual {v0, p1, v3, v4, v4}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    invoke-virtual {p2}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget v6, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Lorg/objectweb/asm/Label;->a:I

    invoke-direct {p0, v3, p2}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    if-eq p1, v2, :cond_3

    new-instance v4, Lorg/objectweb/asm/Label;

    invoke-direct {v4}, Lorg/objectweb/asm/Label;-><init>()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    iget v4, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v6, v4, 0x200

    if-nez v6, :cond_1

    or-int/lit16 v4, v4, 0x200

    iput v4, p2, Lorg/objectweb/asm/Label;->a:I

    iget v4, p0, Lorg/objectweb/asm/h;->S:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/objectweb/asm/h;->S:I

    :cond_1
    iget v4, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v0, Lorg/objectweb/asm/Label;->a:I

    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    add-int/2addr v0, v5

    invoke-direct {p0, v0, p2}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    new-instance v4, Lorg/objectweb/asm/Label;

    invoke-direct {v4}, Lorg/objectweb/asm/Label;-><init>()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    sget-object v6, Lorg/objectweb/asm/e;->a:[I

    aget v6, v6, p1

    add-int/2addr v0, v6

    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    invoke-direct {p0, v0, p2}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    :cond_3
    :goto_0
    iget v0, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    iget v0, p2, Lorg/objectweb/asm/Label;->c:I

    iget-object v6, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v7, v6, Lorg/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v0, v7

    const/16 v7, -0x8000

    if-ge v0, v7, :cond_8

    const/16 v0, 0xc8

    if-ne p1, v2, :cond_4

    :goto_1
    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_3

    :cond_4
    if-ne p1, v1, :cond_5

    const/16 v0, 0xc9

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    iget v1, v4, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Lorg/objectweb/asm/Label;->a:I

    :cond_6
    const/16 v1, 0xa6

    if-gt p1, v1, :cond_7

    add-int/lit8 v1, p1, 0x1

    xor-int/2addr v1, v5

    sub-int/2addr v1, v5

    goto :goto_2

    :cond_7
    xor-int/lit8 v1, p1, 0x1

    :goto_2
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v1, v5

    invoke-virtual {p2, p0, v0, v1, v5}, Lorg/objectweb/asm/Label;->d(Lorg/objectweb/asm/h;Lorg/objectweb/asm/ByteVector;IZ)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    sub-int/2addr v1, v5

    invoke-virtual {p2, p0, v0, v1, v3}, Lorg/objectweb/asm/Label;->d(Lorg/objectweb/asm/h;Lorg/objectweb/asm/ByteVector;IZ)V

    :goto_4
    iget-object p2, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz p2, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/h;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_9
    if-ne p1, v2, :cond_a

    invoke-direct {p0}, Lorg/objectweb/asm/h;->r()V

    :cond_a
    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 5

    iget-boolean v0, p0, Lorg/objectweb/asm/h;->R:Z

    iget-object v1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v2, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->a:[B

    invoke-virtual {p1, p0, v2, v1}, Lorg/objectweb/asm/Label;->g(Lorg/objectweb/asm/h;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/objectweb/asm/h;->R:Z

    iget v0, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/objectweb/asm/h;->T:I

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_2

    iget v3, p1, Lorg/objectweb/asm/Label;->c:I

    iget v4, v1, Lorg/objectweb/asm/Label;->c:I

    if-ne v3, v4, :cond_1

    iget v2, v1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    iput v0, v1, Lorg/objectweb/asm/Label;->a:I

    iget-object v0, v1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    :cond_2
    iput-object p1, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    iget-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    if-nez v0, :cond_3

    new-instance v0, Lorg/objectweb/asm/e;

    invoke-direct {v0}, Lorg/objectweb/asm/e;-><init>()V

    iput-object v0, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iput-object p1, v0, Lorg/objectweb/asm/e;->b:Lorg/objectweb/asm/Label;

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/h;->V:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_7

    iget v1, p1, Lorg/objectweb/asm/Label;->c:I

    iget v2, v0, Lorg/objectweb/asm/Label;->c:I

    if-ne v1, v2, :cond_6

    iget v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget v2, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Label;->a:I

    iget-object v1, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iput-object v1, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iput-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    return-void

    :cond_4
    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_5

    iget v1, p0, Lorg/objectweb/asm/h;->Y:I

    iput v1, v0, Lorg/objectweb/asm/Label;->g:I

    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/h;->f(ILorg/objectweb/asm/Label;)V

    :cond_5
    iput-object p1, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    iput v2, p0, Lorg/objectweb/asm/h;->X:I

    iput v2, p0, Lorg/objectweb/asm/h;->Y:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->V:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_7

    :cond_6
    iput-object p1, v0, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    :cond_7
    iput-object p1, p0, Lorg/objectweb/asm/h;->V:Lorg/objectweb/asm/Label;

    :cond_8
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->i(Ljava/lang/Object;)Lorg/objectweb/asm/g;

    move-result-object p1

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/16 v1, 0x12

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v0, :cond_4

    iget v4, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v4, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, v1, v4, v5, p1}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_2

    :cond_0
    iget v0, p1, Lorg/objectweb/asm/g;->b:I

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    add-int/lit8 v0, v0, 0x2

    :goto_1
    iget v4, p0, Lorg/objectweb/asm/h;->Y:I

    if-le v0, v4, :cond_3

    iput v0, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_3
    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :cond_4
    :goto_2
    iget v0, p1, Lorg/objectweb/asm/g;->a:I

    iget p1, p1, Lorg/objectweb/asm/g;->b:I

    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 p1, 0x100

    if-lt v0, p1, :cond_6

    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x13

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v1, v0}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_5

    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x14

    :goto_4
    invoke-virtual {p1, v1, v0}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    :goto_5
    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/h;->L:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    iget p2, p2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object p2, p0, Lorg/objectweb/asm/h;->M:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    if-nez v1, :cond_0

    new-instance v1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v1, p0, Lorg/objectweb/asm/h;->J:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/h;->J:I

    iget-object v1, p0, Lorg/objectweb/asm/h;->K:Lorg/objectweb/asm/ByteVector;

    iget v2, p4, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/objectweb/asm/Label;->c:I

    iget v3, p4, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p3

    invoke-virtual {p3, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1
    iget-object p3, p0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    if-nez p3, :cond_2

    new-instance p3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {p3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    :cond_2
    iget p3, p0, Lorg/objectweb/asm/h;->H:I

    add-int/2addr p3, v0

    iput p3, p0, Lorg/objectweb/asm/h;->H:I

    iget-object p3, p0, Lorg/objectweb/asm/h;->I:Lorg/objectweb/asm/ByteVector;

    iget v1, p4, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {p3, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lorg/objectweb/asm/Label;->c:I

    iget p4, p4, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p4, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p3, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget p1, p0, Lorg/objectweb/asm/h;->T:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    iget p1, p0, Lorg/objectweb/asm/h;->v:I

    if-le p6, p1, :cond_5

    iput p6, p0, Lorg/objectweb/asm/h;->v:I

    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 5

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-object v2, p3, v1

    iget v2, v2, Lorg/objectweb/asm/Label;->c:I

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lorg/objectweb/asm/Label;->c:I

    aget-object v4, p3, v1

    iget v4, v4, Lorg/objectweb/asm/Label;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lorg/objectweb/asm/TypePath;->a:[B

    iget p2, p2, Lorg/objectweb/asm/TypePath;->b:I

    aget-byte p4, p3, p2

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {v0, p3, p2, p4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :goto_1
    iget-object p2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p2, p6}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v1, Lorg/objectweb/asm/a;

    iget-object p2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 p3, 0x1

    iget p1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 p6, p1, -0x2

    move-object p1, v1

    move-object p4, v0

    move-object p5, v0

    invoke-direct/range {p1 .. p6}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p7, :cond_2

    iget-object p1, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    iput-object p1, v1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object v1, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    iput-object p1, v1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object v1, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    :goto_2
    return-object v1
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 5

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v1, p0, Lorg/objectweb/asm/h;->N:I

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v2, v0, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lorg/objectweb/asm/Label;->d(Lorg/objectweb/asm/h;Lorg/objectweb/asm/ByteVector;IZ)V

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    array-length v0, p3

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    aget v3, p2, v4

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    aget-object v0, p3, v4

    iget-object v3, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p0, v3, v1, v2}, Lorg/objectweb/asm/Label;->d(Lorg/objectweb/asm/h;Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/h;->i(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 13

    iget-boolean v0, p0, Lorg/objectweb/asm/h;->R:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/objectweb/asm/h;->q()V

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->T:I

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_f

    iget-object p1, p0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    :goto_0
    const/high16 p2, 0x1700000

    const-string v0, "java/lang/Throwable"

    if-eqz p1, :cond_3

    iget-object v5, p1, Lorg/objectweb/asm/f;->a:Lorg/objectweb/asm/Label;

    invoke-virtual {v5}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v5

    iget-object v6, p1, Lorg/objectweb/asm/f;->c:Lorg/objectweb/asm/Label;

    invoke-virtual {v6}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v6

    iget-object v7, p1, Lorg/objectweb/asm/f;->b:Lorg/objectweb/asm/Label;

    invoke-virtual {v7}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v7

    iget-object v8, p1, Lorg/objectweb/asm/f;->d:Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    iget-object v8, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v8, v0}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v0

    or-int/2addr p2, v0

    iget v0, v6, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Lorg/objectweb/asm/Label;->a:I

    :goto_2
    if-eq v5, v7, :cond_2

    new-instance v0, Lorg/objectweb/asm/c;

    invoke-direct {v0}, Lorg/objectweb/asm/c;-><init>()V

    iput p2, v0, Lorg/objectweb/asm/c;->a:I

    iput-object v6, v0, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    iget-object v8, v5, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iput-object v8, v0, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iput-object v0, v5, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iget-object v5, v5, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lorg/objectweb/asm/f;->f:Lorg/objectweb/asm/f;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    iget-object p1, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget-object v5, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-static {v5}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v5

    iget-object v6, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget v7, p0, Lorg/objectweb/asm/h;->b:I

    iget v8, p0, Lorg/objectweb/asm/h;->v:I

    invoke-virtual {p1, v6, v7, v5, v8}, Lorg/objectweb/asm/e;->h(Lorg/objectweb/asm/ClassWriter;I[Lorg/objectweb/asm/Type;I)V

    invoke-direct {p0, p1}, Lorg/objectweb/asm/h;->n(Lorg/objectweb/asm/e;)V

    iget-object p1, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    const/4 v5, 0x0

    :goto_3
    if-eqz p1, :cond_8

    iget-object v6, p1, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iput-object v1, p1, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iget-object v7, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget v8, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_4

    or-int/lit8 v8, v8, 0x20

    iput v8, p1, Lorg/objectweb/asm/Label;->a:I

    :cond_4
    iget v8, p1, Lorg/objectweb/asm/Label;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p1, Lorg/objectweb/asm/Label;->a:I

    iget-object v8, v7, Lorg/objectweb/asm/e;->d:[I

    array-length v8, v8

    iget v9, p1, Lorg/objectweb/asm/Label;->g:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_5

    move v5, v8

    :cond_5
    iget-object p1, p1, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    :goto_4
    if-eqz p1, :cond_7

    iget-object v8, p1, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    invoke-virtual {v8}, Lorg/objectweb/asm/Label;->a()Lorg/objectweb/asm/Label;

    move-result-object v8

    iget-object v9, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget-object v10, v8, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget v11, p1, Lorg/objectweb/asm/c;->a:I

    invoke-virtual {v7, v9, v10, v11}, Lorg/objectweb/asm/e;->k(Lorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/e;I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    if-nez v9, :cond_6

    iput-object v6, v8, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    move-object v6, v8

    :cond_6
    iget-object p1, p1, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    goto :goto_4

    :cond_7
    move-object p1, v6

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    :goto_5
    if-eqz p1, :cond_d

    iget-object v1, p1, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget v6, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_9

    invoke-direct {p0, v1}, Lorg/objectweb/asm/h;->n(Lorg/objectweb/asm/e;)V

    :cond_9
    iget v1, p1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_c

    iget-object v1, p1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    iget v6, p1, Lorg/objectweb/asm/Label;->c:I

    if-nez v1, :cond_a

    iget-object v7, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->b:I

    goto :goto_6

    :cond_a
    iget v7, v1, Lorg/objectweb/asm/Label;->c:I

    :goto_6
    sub-int/2addr v7, v4

    if-lt v7, v6, :cond_c

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v8, v6

    :goto_7
    if-ge v8, v7, :cond_b

    iget-object v9, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v9, v9, Lorg/objectweb/asm/ByteVector;->a:[B

    aput-byte v3, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    iget-object v8, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget-object v8, v8, Lorg/objectweb/asm/ByteVector;->a:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v7

    invoke-direct {p0, v6, v3, v4}, Lorg/objectweb/asm/h;->b(III)I

    move-result v6

    iget-object v7, p0, Lorg/objectweb/asm/h;->B:[I

    iget-object v8, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v8, v0}, Lorg/objectweb/asm/ClassWriter;->t(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v8, p2

    aput v8, v7, v6

    invoke-direct {p0}, Lorg/objectweb/asm/h;->m()V

    iget-object v6, p0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    invoke-static {v6, p1, v1}, Lorg/objectweb/asm/f;->a(Lorg/objectweb/asm/f;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/f;

    move-result-object v1

    iput-object v1, p0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    :cond_c
    iget-object p1, p1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    iput v3, p0, Lorg/objectweb/asm/h;->C:I

    :goto_8
    if-eqz p1, :cond_e

    iget p2, p0, Lorg/objectweb/asm/h;->C:I

    add-int/2addr p2, v4

    iput p2, p0, Lorg/objectweb/asm/h;->C:I

    iget-object p1, p1, Lorg/objectweb/asm/f;->f:Lorg/objectweb/asm/f;

    goto :goto_8

    :cond_e
    iput v5, p0, Lorg/objectweb/asm/h;->u:I

    goto/16 :goto_11

    :cond_f
    if-ne v0, v4, :cond_1e

    iget-object p2, p0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    :goto_9
    const v0, 0x7fffffff

    if-eqz p2, :cond_12

    iget-object v5, p2, Lorg/objectweb/asm/f;->a:Lorg/objectweb/asm/Label;

    iget-object v6, p2, Lorg/objectweb/asm/f;->c:Lorg/objectweb/asm/Label;

    iget-object v7, p2, Lorg/objectweb/asm/f;->b:Lorg/objectweb/asm/Label;

    :goto_a
    if-eq v5, v7, :cond_11

    new-instance v8, Lorg/objectweb/asm/c;

    invoke-direct {v8}, Lorg/objectweb/asm/c;-><init>()V

    iput v0, v8, Lorg/objectweb/asm/c;->a:I

    iput-object v6, v8, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    iget v9, v5, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_10

    iget-object v9, v5, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iput-object v9, v8, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iput-object v8, v5, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    goto :goto_b

    :cond_10
    iget-object v9, v5, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iget-object v10, v9, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iget-object v10, v10, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iput-object v10, v8, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iget-object v9, v9, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iput-object v8, v9, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    :goto_b
    iget-object v5, v5, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_a

    :cond_11
    iget-object p2, p2, Lorg/objectweb/asm/f;->f:Lorg/objectweb/asm/f;

    goto :goto_9

    :cond_12
    iget p2, p0, Lorg/objectweb/asm/h;->S:I

    if-lez p2, :cond_17

    iget-object v5, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v1, v6, v7, p2}, Lorg/objectweb/asm/Label;->h(Lorg/objectweb/asm/Label;JI)V

    iget-object p2, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    const/4 v5, 0x0

    :goto_c
    if-eqz p2, :cond_14

    iget v8, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_13

    iget-object v8, p2, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iget-object v8, v8, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iget-object v8, v8, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    iget v9, v8, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_13

    add-int/lit8 v5, v5, 0x1

    int-to-long v9, v5

    const-wide/16 v11, 0x20

    div-long/2addr v9, v11

    shl-long/2addr v9, v2

    rem-int/lit8 v11, v5, 0x20

    shl-long v11, v6, v11

    or-long/2addr v9, v11

    iget v11, p0, Lorg/objectweb/asm/h;->S:I

    invoke-virtual {v8, v1, v9, v10, v11}, Lorg/objectweb/asm/Label;->h(Lorg/objectweb/asm/Label;JI)V

    :cond_13
    iget-object p2, p2, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_c

    :cond_14
    iget-object p2, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    :goto_d
    if-eqz p2, :cond_17

    iget v1, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    :goto_e
    if-eqz v1, :cond_15

    iget v2, v1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v1, Lorg/objectweb/asm/Label;->a:I

    iget-object v1, v1, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_e

    :cond_15
    iget-object v1, p2, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iget-object v1, v1, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    iget-object v1, v1, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    const-wide/16 v5, 0x0

    iget v2, p0, Lorg/objectweb/asm/h;->S:I

    invoke-virtual {v1, p2, v5, v6, v2}, Lorg/objectweb/asm/Label;->h(Lorg/objectweb/asm/Label;JI)V

    :cond_16
    iget-object p2, p2, Lorg/objectweb/asm/Label;->i:Lorg/objectweb/asm/Label;

    goto :goto_d

    :cond_17
    iget-object p2, p0, Lorg/objectweb/asm/h;->U:Lorg/objectweb/asm/Label;

    :cond_18
    if-eqz p2, :cond_1d

    iget-object v1, p2, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    iget v2, p2, Lorg/objectweb/asm/Label;->f:I

    iget v5, p2, Lorg/objectweb/asm/Label;->g:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_19

    move v3, v5

    :cond_19
    iget-object v5, p2, Lorg/objectweb/asm/Label;->j:Lorg/objectweb/asm/c;

    iget p2, p2, Lorg/objectweb/asm/Label;->a:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_1a

    iget-object v5, v5, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    :cond_1a
    move-object p2, v1

    :goto_f
    if-eqz v5, :cond_18

    iget-object v1, v5, Lorg/objectweb/asm/c;->b:Lorg/objectweb/asm/Label;

    iget v6, v1, Lorg/objectweb/asm/Label;->a:I

    and-int/lit8 v7, v6, 0x8

    if-nez v7, :cond_1c

    iget v7, v5, Lorg/objectweb/asm/c;->a:I

    if-ne v7, v0, :cond_1b

    const/4 v7, 0x1

    goto :goto_10

    :cond_1b
    add-int/2addr v7, v2

    :goto_10
    iput v7, v1, Lorg/objectweb/asm/Label;->f:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v1, Lorg/objectweb/asm/Label;->a:I

    iput-object p2, v1, Lorg/objectweb/asm/Label;->k:Lorg/objectweb/asm/Label;

    move-object p2, v1

    :cond_1c
    iget-object v5, v5, Lorg/objectweb/asm/c;->c:Lorg/objectweb/asm/c;

    goto :goto_f

    :cond_1d
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/objectweb/asm/h;->u:I

    goto :goto_11

    :cond_1e
    iput p1, p0, Lorg/objectweb/asm/h;->u:I

    iput p2, p0, Lorg/objectweb/asm/h;->v:I

    :goto_11
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/objectweb/asm/ClassWriter;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/g;

    move-result-object p2

    iget p3, p2, Lorg/objectweb/asm/g;->c:I

    iget-object p5, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/4 v0, 0x0

    if-eqz p5, :cond_4

    iget v1, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v1, :cond_0

    iget-object p5, p5, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p5, p1, v0, v1, p2}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lorg/objectweb/asm/g;->c:I

    :cond_1
    const/16 p5, 0xb8

    if-ne p1, p5, :cond_2

    iget p5, p0, Lorg/objectweb/asm/h;->X:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    iget p5, p0, Lorg/objectweb/asm/h;->X:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    :goto_0
    iget v1, p0, Lorg/objectweb/asm/h;->Y:I

    if-le p5, v1, :cond_3

    iput p5, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_3
    iput p5, p0, Lorg/objectweb/asm/h;->X:I

    :cond_4
    :goto_1
    const/16 p5, 0xb9

    if-ne p1, p5, :cond_6

    if-nez p3, :cond_5

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lorg/objectweb/asm/g;->c:I

    :cond_5
    iget-object p1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p2, p2, Lorg/objectweb/asm/g;->a:I

    invoke-virtual {p1, p5, p2}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    shr-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2, v0}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_6
    iget-object p3, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p2, p2, Lorg/objectweb/asm/g;->a:I

    invoke-virtual {p3, p1, p2}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    :goto_2
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->j(Ljava/lang/String;)Lorg/objectweb/asm/g;

    move-result-object p1

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/16 v1, 0xc5

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v2, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, v1, p2, v2, p1}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p1, p1, Lorg/objectweb/asm/g;->a:I

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/h;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/h;->F:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->G:Lorg/objectweb/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const-string v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p2, p0, Lorg/objectweb/asm/h;->r:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/objectweb/asm/h;->r:I

    new-instance p1, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 p2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance p2, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lorg/objectweb/asm/a;

    iput-object p3, p0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    :cond_1
    iget-object p3, p0, Lorg/objectweb/asm/h;->p:[Lorg/objectweb/asm/a;

    aget-object v0, p3, p1

    iput-object v0, p2, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    aput-object p2, p3, p1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/objectweb/asm/h;->e:Ljava/lang/String;

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lorg/objectweb/asm/a;

    iput-object p3, p0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    :cond_3
    iget-object p3, p0, Lorg/objectweb/asm/h;->q:[Lorg/objectweb/asm/a;

    aget-object v0, p3, p1

    iput-object v0, p2, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    aput-object p2, p3, p1

    :goto_0
    return-object p2
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 5

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v1, p0, Lorg/objectweb/asm/h;->N:I

    const/16 v2, 0xaa

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v2, v0, Lorg/objectweb/asm/ByteVector;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    const/4 v2, 0x1

    invoke-virtual {p3, p0, v0, v1, v2}, Lorg/objectweb/asm/Label;->d(Lorg/objectweb/asm/h;Lorg/objectweb/asm/ByteVector;IZ)V

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    array-length p1, p4

    if-ge v4, p1, :cond_0

    aget-object p1, p4, v4

    iget-object p2, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, p2, v1, v2}, Lorg/objectweb/asm/Label;->d(Lorg/objectweb/asm/h;Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/h;->i(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lorg/objectweb/asm/a;->b(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object p1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance p1, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget p2, v4, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->O:Lorg/objectweb/asm/a;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->P:Lorg/objectweb/asm/a;

    :goto_0
    return-object p1
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/h;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/h;->C:I

    new-instance v0, Lorg/objectweb/asm/f;

    invoke-direct {v0}, Lorg/objectweb/asm/f;-><init>()V

    iput-object p1, v0, Lorg/objectweb/asm/f;->a:Lorg/objectweb/asm/Label;

    iput-object p2, v0, Lorg/objectweb/asm/f;->b:Lorg/objectweb/asm/Label;

    iput-object p3, v0, Lorg/objectweb/asm/f;->c:Lorg/objectweb/asm/Label;

    iput-object p4, v0, Lorg/objectweb/asm/f;->d:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Lorg/objectweb/asm/f;->e:I

    iget-object p1, p0, Lorg/objectweb/asm/h;->E:Lorg/objectweb/asm/f;

    if-nez p1, :cond_1

    iput-object v0, p0, Lorg/objectweb/asm/h;->D:Lorg/objectweb/asm/f;

    goto :goto_1

    :cond_1
    iput-object v0, p1, Lorg/objectweb/asm/f;->f:Lorg/objectweb/asm/f;

    :goto_1
    iput-object v0, p0, Lorg/objectweb/asm/h;->E:Lorg/objectweb/asm/f;

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v4}, Lorg/objectweb/asm/a;->b(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object p1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance p1, Lorg/objectweb/asm/a;

    iget-object v1, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    iget p2, v4, Lorg/objectweb/asm/ByteVector;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/a;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->n:Lorg/objectweb/asm/a;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    iput-object p2, p1, Lorg/objectweb/asm/a;->g:Lorg/objectweb/asm/a;

    iput-object p1, p0, Lorg/objectweb/asm/h;->o:Lorg/objectweb/asm/a;

    :goto_0
    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->j(Ljava/lang/String;)Lorg/objectweb/asm/g;

    move-result-object p2

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    iget-object v1, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->b:I

    iget-object v2, p0, Lorg/objectweb/asm/h;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_2

    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/objectweb/asm/h;->Y:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_1
    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget p2, p2, Lorg/objectweb/asm/g;->a:I

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 5

    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->b:I

    iput v0, p0, Lorg/objectweb/asm/h;->N:I

    iget-object v0, p0, Lorg/objectweb/asm/h;->W:Lorg/objectweb/asm/Label;

    const/16 v1, 0x100

    const/16 v2, 0xa9

    if-eqz v0, :cond_3

    iget v3, p0, Lorg/objectweb/asm/h;->T:I

    if-nez v3, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/Label;->h:Lorg/objectweb/asm/e;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lorg/objectweb/asm/e;->f(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/g;)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    iget v3, v0, Lorg/objectweb/asm/Label;->a:I

    or-int/2addr v3, v1

    iput v3, v0, Lorg/objectweb/asm/Label;->a:I

    iget v3, p0, Lorg/objectweb/asm/h;->X:I

    iput v3, v0, Lorg/objectweb/asm/Label;->f:I

    invoke-direct {p0}, Lorg/objectweb/asm/h;->r()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/objectweb/asm/h;->X:I

    sget-object v3, Lorg/objectweb/asm/e;->a:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lorg/objectweb/asm/h;->Y:I

    if-le v0, v3, :cond_2

    iput v0, p0, Lorg/objectweb/asm/h;->Y:I

    :cond_2
    iput v0, p0, Lorg/objectweb/asm/h;->X:I

    :cond_3
    :goto_0
    iget v0, p0, Lorg/objectweb/asm/h;->T:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x37

    if-eq p1, v0, :cond_5

    const/16 v0, 0x39

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v0, p2, 0x2

    :goto_2
    iget v4, p0, Lorg/objectweb/asm/h;->v:I

    if-le v0, v4, :cond_6

    iput v0, p0, Lorg/objectweb/asm/h;->v:I

    :cond_6
    const/4 v0, 0x4

    const/16 v4, 0x36

    if-ge p2, v0, :cond_8

    if-eq p1, v2, :cond_8

    if-ge p1, v4, :cond_7

    add-int/lit8 v0, p1, -0x15

    shl-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1a

    goto :goto_3

    :cond_7
    add-int/lit8 v0, p1, -0x36

    shl-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3b

    :goto_3
    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lorg/objectweb/asm/h;->t:Lorg/objectweb/asm/ByteVector;

    if-lt p2, v1, :cond_9

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->c(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_4

    :cond_9
    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->a(II)Lorg/objectweb/asm/ByteVector;

    :goto_4
    if-lt p1, v4, :cond_a

    iget p1, p0, Lorg/objectweb/asm/h;->T:I

    if-nez p1, :cond_a

    iget p1, p0, Lorg/objectweb/asm/h;->C:I

    if-lez p1, :cond_a

    new-instance p1, Lorg/objectweb/asm/Label;

    invoke-direct {p1}, Lorg/objectweb/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/h;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_a
    return-void
.end method
