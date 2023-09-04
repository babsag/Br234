.class public Lbr/com/topaz/c/g;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/c/g$b;
    }
.end annotation


# static fields
.field private static h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lbr/com/topaz/l/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/l/x;

.field private d:Lbr/com/topaz/v0/c;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private f:Lbr/com/topaz/c/g$b;

.field private g:Lbr/com/topaz/u0/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lbr/com/topaz/c/g;->h:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/x;Lbr/com/topaz/v0/c;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/c/g;->b:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/c/g;->c:Lbr/com/topaz/l/x;

    iput-object p4, p0, Lbr/com/topaz/c/g;->d:Lbr/com/topaz/v0/c;

    iput-object p5, p0, Lbr/com/topaz/c/g;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p6, p0, Lbr/com/topaz/c/g;->g:Lbr/com/topaz/u0/r;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/c/g;)Lbr/com/topaz/u0/r;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c/g;->g:Lbr/com/topaz/u0/r;

    return-object p0
.end method

.method private a(Lbr/com/topaz/l/x;)Z
    .locals 1

    sget-object v0, Lbr/com/topaz/c/g;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbr/com/topaz/c/g;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lbr/com/topaz/c/g;)Lbr/com/topaz/l/x;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c/g;->c:Lbr/com/topaz/l/x;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/c/g;)Lbr/com/topaz/c/g$b;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/c/g;->f:Lbr/com/topaz/c/g$b;

    return-object p0
.end method

.method private c()V
    .locals 2

    :goto_0
    sget-object v0, Lbr/com/topaz/c/g;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget-object v0, Lbr/com/topaz/c/g;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/c/g$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/c/g;->f:Lbr/com/topaz/c/g$b;

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/c/g;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->a()Lbr/com/topaz/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/c/g;->c:Lbr/com/topaz/l/x;

    invoke-direct {p0, v0}, Lbr/com/topaz/c/g;->a(Lbr/com/topaz/l/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/topaz/c/g;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lbr/com/topaz/c/g;->c:Lbr/com/topaz/l/x;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/c/g;->d:Lbr/com/topaz/v0/c;

    iget-object v1, p0, Lbr/com/topaz/c/g;->c:Lbr/com/topaz/l/x;

    new-instance v2, Lbr/com/topaz/c/g$a;

    invoke-direct {v2, p0}, Lbr/com/topaz/c/g$a;-><init>(Lbr/com/topaz/c/g;)V

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/v0/c;->a(Lbr/com/topaz/l/x;Lbr/com/topaz/v0/c$a;)V

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/c/g;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lbr/com/topaz/c/g;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "015"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
