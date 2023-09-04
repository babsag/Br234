.class public Lcaf/io/V;
.super Ljava/lang/Object;
.source "SensorRequest.java"


# instance fields
.field private final a:I

.field private final b:[Lcaf/io/W;


# direct methods
.method public constructor <init>(I[Lcaf/io/W;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcaf/io/V;->a:I

    .line 3
    iput-object p2, p0, Lcaf/io/V;->b:[Lcaf/io/W;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcaf/io/V;->a:I

    return v0
.end method

.method b()[Lcaf/io/W;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/V;->b:[Lcaf/io/W;

    return-object v0
.end method
