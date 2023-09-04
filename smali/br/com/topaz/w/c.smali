.class public Lbr/com/topaz/w/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/w/e;

.field private c:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/w/e;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/w/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/w/c;->b:Lbr/com/topaz/w/e;

    iput-object p3, p0, Lbr/com/topaz/w/c;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/w/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/w/c;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    new-instance v0, Lbr/com/topaz/w/d;

    iget-object v1, p0, Lbr/com/topaz/w/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/topaz/w/c;->b:Lbr/com/topaz/w/e;

    iget-object v3, p0, Lbr/com/topaz/w/c;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v0, v1, v2, v3}, Lbr/com/topaz/w/d;-><init>(Landroid/content/Context;Lbr/com/topaz/w/e;Lbr/com/topaz/heartbeat/utils/OFDException;)V

    new-instance v1, Lbr/com/topaz/l/l;

    invoke-direct {v1}, Lbr/com/topaz/l/l;-><init>()V

    iget-object v2, p0, Lbr/com/topaz/w/c;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/w/a;

    invoke-static {}, Lbr/com/topaz/s/c;->a()Lbr/com/topaz/s/a;

    move-result-object v3

    new-instance v4, Lbr/com/topaz/w/c$a;

    invoke-direct {v4, p0, v1}, Lbr/com/topaz/w/c$a;-><init>(Lbr/com/topaz/w/c;Lbr/com/topaz/r/b;)V

    invoke-direct {v2, v3, v0, v4}, Lbr/com/topaz/w/a;-><init>(Lbr/com/topaz/s/a;Lbr/com/topaz/w/d;Lbr/com/topaz/w/a$b;)V

    invoke-virtual {v2}, Lbr/com/topaz/s0/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
