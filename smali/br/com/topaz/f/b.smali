.class public Lbr/com/topaz/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/g0/a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/g0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/f/b;->a:Lbr/com/topaz/g0/a;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/f/b;)Lbr/com/topaz/g0/a;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/f/b;->a:Lbr/com/topaz/g0/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lbr/com/topaz/f/b$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/f/b$a;-><init>(Lbr/com/topaz/f/b;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
