.class public final Lcaf/io/s;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/s$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Lcaf/io/N;

.field private static final k:[Lcaf/io/N;

.field private static l:Lcaf/io/s;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final m:Landroid/content/Context;

.field private n:Z

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-wide v0, -0x53d3da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-wide v1, -0x5473da67cb6L

    .line 1
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide v3, -0x5533da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-wide v4, -0x55f3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-wide v5, -0x56b3da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-wide v6, -0x5773da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-wide v7, -0x5833da67cb6L

    invoke-static {v7, v8}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-wide v8, -0x58f3da67cb6L

    invoke-static {v8, v9}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-wide v9, -0x59b3da67cb6L

    invoke-static {v9, v10}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-wide v10, -0x5a73da67cb6L

    invoke-static {v10, v11}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-wide v11, -0x5b33da67cb6L

    invoke-static {v11, v12}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-wide v12, -0x5bf3da67cb6L

    invoke-static {v12, v13}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-wide v13, -0x5cb3da67cb6L

    invoke-static {v13, v14}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-wide v14, -0x5d73da67cb6L

    invoke-static {v14, v15}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-wide v15, -0x5e33da67cb6L

    invoke-static/range {v15 .. v16}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-wide v16, -0x5ef3da67cb6L

    invoke-static/range {v16 .. v17}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-wide v17, -0x5fb3da67cb6L

    invoke-static/range {v17 .. v18}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xf

    aput-object v1, v0, v15

    sput-object v0, Lcaf/io/s;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-wide v18, -0x6073da67cb6L

    .line 2
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide v18, -0x6173da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide v18, -0x6283da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcaf/io/s;->b:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-wide v18, -0x6383da67cb6L

    .line 3
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcaf/io/s;->c:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-wide v18, -0x6483da67cb6L

    .line 4
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide v18, -0x65a3da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcaf/io/s;->d:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-wide v18, -0x6753da67cb6L

    .line 5
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcaf/io/s;->e:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-wide v18, -0x67e3da67cb6L

    .line 6
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide v18, -0x6903da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcaf/io/s;->f:[Ljava/lang/String;

    new-array v0, v10, [Ljava/lang/String;

    const-wide v18, -0x69f3da67cb6L

    .line 7
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide v18, -0x6b63da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide v18, -0x6bf3da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-wide v18, -0x6d33da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide v18, -0x6e43da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-wide v18, -0x6f33da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-wide v18, -0x7003da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-wide v18, -0x70f3da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcaf/io/s;->g:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-wide v18, -0x7213da67cb6L

    .line 8
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide v18, -0x72c3da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcaf/io/s;->h:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-wide v18, -0x73c3da67cb6L

    .line 9
    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-wide v18, -0x7463da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide v18, -0x7523da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcaf/io/s;->i:[Ljava/lang/String;

    new-array v0, v15, [Lcaf/io/N;

    .line 10
    new-instance v1, Lcaf/io/N;

    const-wide v18, -0x7613da67cb6L

    invoke-static/range {v18 .. v19}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x0

    invoke-direct {v1, v15, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcaf/io/N;

    const-wide v19, -0x7703da67cb6L

    invoke-static/range {v19 .. v20}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcaf/io/N;

    const-wide v19, -0x7843da67cb6L

    invoke-static/range {v19 .. v20}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcaf/io/N;

    const-wide v19, -0x7953da67cb6L

    invoke-static/range {v19 .. v20}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x7a93da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x7bd3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x7cb3da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x7d33da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x7df3da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x7e73da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x7f33da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x7fc3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v10

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x8143da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v11

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x8283da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x8373da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v12

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x8393da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x84b3da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v13

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x8533da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x8643da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x8683da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x8783da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Lcaf/io/N;

    const-wide v4, -0x87c3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v14}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v16

    sput-object v0, Lcaf/io/s;->j:[Lcaf/io/N;

    new-array v0, v3, [Lcaf/io/N;

    .line 11
    new-instance v1, Lcaf/io/N;

    const-wide v3, -0x8883da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x89f3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcaf/io/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcaf/io/s;->k:[Lcaf/io/N;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcaf/io/s;->n:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcaf/io/s;->o:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v1, -0x17e3da67cb6L

    .line 5
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v1, -0x1ad3da67cb6L

    .line 6
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v1, -0x1bc3da67cb6L

    .line 7
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcaf/io/s;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcaf/io/s;->l:Lcaf/io/s;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcaf/io/s;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcaf/io/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcaf/io/s;->l:Lcaf/io/s;

    .line 3
    :cond_0
    sget-object p0, Lcaf/io/s;->l:Lcaf/io/s;

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-wide v0, -0x1643da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-wide v0, -0x4873da67cb6L

    .line 2
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-wide v0, -0x4a33da67cb6L

    .line 3
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c()Z
    .locals 7

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-wide v1, -0x2ea3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-wide v3, -0x2f23da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x2fd3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-wide v3, -0x3053da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-wide v3, -0x30e3da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-wide v3, -0x3283da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-wide v3, -0x3333da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-wide v3, -0x33c3da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-wide v4, -0x3433da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide v4, -0x3473da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide v4, -0x3523da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide v4, -0x35a3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x3623da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x3663da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-wide v4, -0x36a3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x36e3da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-wide v3, -0x3723da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-wide v3, -0x3763da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 19
    :cond_2
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-wide v4, -0x37f3da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-wide v4, -0x3873da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    or-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-wide v1, -0x38f3da67cb6L

    .line 20
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lcaf/io/s;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcaf/io/s;->g()Z

    move-result p0

    return p0
.end method

.method private e([Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private f()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v1, -0x42e3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    const-wide v3, -0x44a3da67cb6L

    .line 2
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/io/File;

    const-wide v5, -0x45d3da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 7
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 9
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 10
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 12
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-wide v3, -0x46a3da67cb6L

    .line 14
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 15
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    const-wide v6, -0x46c3da67cb6L

    .line 16
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-wide v6, -0x4723da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-wide v6, -0x4783da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-wide v6, -0x47d3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return v1
.end method

.method private g()Z
    .locals 21

    move-object/from16 v1, p0

    const-wide v2, -0x1cb3da67cb6L

    .line 1
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v11, Lcaf/io/g;

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v3, -0x25f3da67cb6L

    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-direct {v1, v2, v3}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v4, -0x2703da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-direct {v1, v2, v4}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v5, -0x27e3da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-direct {v1, v2, v5}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v6, -0x2953da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-direct {v1, v2, v6}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v7, -0x2a33da67cb6L

    invoke-static {v7, v8}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-direct {v1, v2, v7}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v8, -0x2b13da67cb6L

    invoke-static {v8, v9}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-direct {v1, v2, v8}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v9, -0x2c93da67cb6L

    invoke-static {v9, v10}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-direct {v1, v2, v9}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v12, -0x2d53da67cb6L

    invoke-static {v12, v13}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-direct {v1, v2, v10}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcaf/io/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v2, Lcaf/io/t;->n:Lcaf/io/t;

    new-instance v3, Lcaf/io/g;

    .line 12
    invoke-virtual {v11}, Lcaf/io/g;->e()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-virtual {v11}, Lcaf/io/g;->c()Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-virtual {v11}, Lcaf/io/g;->h()Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-virtual {v11}, Lcaf/io/g;->g()Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-virtual {v11}, Lcaf/io/g;->f()Ljava/lang/String;

    move-result-object v17

    .line 17
    invoke-virtual {v11}, Lcaf/io/g;->d()Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-virtual {v11}, Lcaf/io/g;->b()Ljava/lang/String;

    move-result-object v19

    .line 19
    invoke-virtual {v11}, Lcaf/io/g;->a()Ljava/lang/String;

    move-result-object v20

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lcaf/io/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v2, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Lcaf/io/s;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v3, -0x1fa3da67cb6L

    .line 22
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_12

    .line 23
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v6, -0x3ca3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcaf/io/s;->n:Z

    if-eqz v0, :cond_8

    .line 24
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide v6, -0x4a73da67cb6L

    .line 25
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v6, -0x3ee3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v2, Lcaf/io/s;->a:[Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    .line 29
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    .line 30
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v6, -0x3f43da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 31
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v2, Lcaf/io/s;->b:[Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    .line 33
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_1
    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 34
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v6, -0x3fa3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v2, Lcaf/io/s;->c:[Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_6

    aget-object v8, v2, v7

    .line 37
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_2
    :cond_6
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_7

    .line 38
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v6, -0x4003da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-wide v6, -0x4063da67cb6L

    .line 40
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_11

    .line 41
    sget-object v0, Lcaf/io/s;->d:[Ljava/lang/String;

    const-wide v6, -0x39a3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    .line 42
    invoke-direct {v1, v0}, Lcaf/io/s;->e([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcaf/io/s;->h:[Ljava/lang/String;

    const-wide v6, -0x39f3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    .line 43
    invoke-direct {v1, v0}, Lcaf/io/s;->e([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcaf/io/s;->i:[Ljava/lang/String;

    const-wide v6, -0x3a43da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    .line 44
    invoke-direct {v1, v0}, Lcaf/io/s;->e([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/io/File;

    .line 45
    new-instance v0, Ljava/io/File;

    const-wide v7, -0x40e3da67cb6L

    invoke-static {v7, v8}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v5

    new-instance v0, Ljava/io/File;

    const-wide v7, -0x4203da67cb6L

    invoke-static {v7, v8}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v2, :cond_b

    aget-object v0, v6, v7

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 47
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    .line 49
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :goto_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 52
    sget-object v8, Lcaf/io/s;->e:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v9, :cond_a

    aget-object v11, v8, v10

    .line 53
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_11

    .line 54
    sget-object v0, Lcaf/io/s;->f:[Ljava/lang/String;

    const-wide v6, -0x3a83da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    .line 55
    invoke-direct {v1, v0}, Lcaf/io/s;->e([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    invoke-direct/range {p0 .. p0}, Lcaf/io/s;->f()Z

    move-result v0

    if-nez v0, :cond_11

    .line 57
    sget-object v0, Lcaf/io/s;->j:[Lcaf/io/N;

    array-length v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_b
    if-ge v6, v2, :cond_e

    aget-object v8, v0, v6

    .line 58
    iget-object v9, v1, Lcaf/io/s;->m:Landroid/content/Context;

    iget-object v10, v8, Lcaf/io/N;->a:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    iget-object v8, v8, Lcaf/io/N;->b:Ljava/lang/String;

    if-nez v8, :cond_c

    if-eqz v9, :cond_c

    add-int/lit8 v7, v7, 0x1

    :cond_c
    if-eqz v8, :cond_d

    .line 60
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    add-int/lit8 v7, v7, 0x1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x5

    if-lt v7, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_10

    .line 61
    sget-object v0, Lcaf/io/s;->g:[Ljava/lang/String;

    const-wide v6, -0x3ae3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    invoke-direct {v1, v0}, Lcaf/io/s;->e([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-eqz v2, :cond_12

    const-wide v6, -0x2063da67cb6L

    .line 62
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    :cond_12
    if-nez v2, :cond_16

    .line 63
    iget-object v0, v1, Lcaf/io/s;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_f

    .line 64
    :cond_13
    iget-object v0, v1, Lcaf/io/s;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    iget-object v2, v1, Lcaf/io/s;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_14

    const/high16 v7, 0x10000

    .line 67
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 68
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v2, 0x1

    goto :goto_10

    :cond_15
    :goto_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_16

    const-wide v6, -0x2153da67cb6L

    .line 69
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    :cond_16
    if-nez v2, :cond_19

    .line 70
    sget-object v0, Lcaf/io/s;->k:[Lcaf/io/N;

    aget-object v0, v0, v5

    .line 71
    iget-object v2, v1, Lcaf/io/s;->m:Landroid/content/Context;

    iget-object v6, v0, Lcaf/io/N;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v6}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 72
    iget-object v0, v0, Lcaf/io/N;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_18

    const-wide v2, -0x2293da67cb6L

    .line 73
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    :cond_18
    move v2, v4

    :cond_19
    if-nez v2, :cond_1b

    const-wide v4, -0x2413da67cb6L

    .line 74
    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v4, v1, Lcaf/io/s;->m:Landroid/content/Context;

    const-wide v5, -0x3b23da67cb6L

    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcaf/io/s;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 76
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-wide v4, -0x2463da67cb6L

    invoke-static {v4, v5}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :cond_1a
    if-eqz v2, :cond_1b

    const-wide v3, -0x24c3da67cb6L

    .line 77
    invoke-static {v3, v4}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v3

    :cond_1b
    if-eqz v2, :cond_1c

    .line 78
    sget-object v0, Lcaf/io/t;->o:Lcaf/io/t;

    new-instance v4, Lcaf/io/r;

    invoke-direct {v4, v3}, Lcaf/io/r;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v3, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v3, v0, v4}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :cond_1c
    return v2
.end method


# virtual methods
.method public a(Z)Lcaf/io/s;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcaf/io/s;->n:Z

    return-object p0
.end method

.method public a(Lcaf/io/s$b;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcaf/io/s$a;

    invoke-direct {v1, p0, p1}, Lcaf/io/s$a;-><init>(Lcaf/io/s;Lcaf/io/s$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
