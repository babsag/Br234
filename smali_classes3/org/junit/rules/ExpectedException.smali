.class public Lorg/junit/rules/ExpectedException;
.super Ljava/lang/Object;
.source "ExpectedException.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/ExpectedException$a;
    }
.end annotation


# instance fields
.field private final a:Lorg/junit/rules/a;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/junit/rules/a;

    invoke-direct {v0}, Lorg/junit/rules/a;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ExpectedException;->a:Lorg/junit/rules/a;

    const-string v0, "Expected test to throw %s"

    .line 3
    iput-object v0, p0, Lorg/junit/rules/ExpectedException;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/junit/rules/ExpectedException;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lorg/junit/rules/ExpectedException;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lorg/junit/rules/ExpectedException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->d()V

    return-void
.end method

.method private d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/junit/rules/ExpectedException;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->a:Lorg/junit/rules/a;

    invoke-virtual {v0}, Lorg/junit/rules/a;->c()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/junit/Assert;->assertThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    return-void

    .line 3
    :cond_0
    throw p1
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->a:Lorg/junit/rules/a;

    invoke-virtual {v0}, Lorg/junit/rules/a;->f()Z

    move-result v0

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->a:Lorg/junit/rules/a;

    invoke-virtual {v0}, Lorg/junit/rules/a;->c()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/junit/rules/ExpectedException;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static none()Lorg/junit/rules/ExpectedException;
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/rules/ExpectedException;

    invoke-direct {v0}, Lorg/junit/rules/ExpectedException;-><init>()V

    return-object v0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 1
    new-instance p2, Lorg/junit/rules/ExpectedException$a;

    invoke-direct {p2, p0, p1}, Lorg/junit/rules/ExpectedException$a;-><init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V

    return-object p2
.end method

.method public expect(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/hamcrest/CoreMatchers;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public expect(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/rules/ExpectedException;->a:Lorg/junit/rules/a;

    invoke-virtual {v0, p1}, Lorg/junit/rules/a;->a(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public expectCause(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->hasCause(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public expectMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/hamcrest/CoreMatchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/rules/ExpectedException;->expectMessage(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public expectMessage(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/junit/internal/matchers/ThrowableMessageMatcher;->hasMessage(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/junit/rules/ExpectedException;->expect(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method public handleAssertionErrors()Lorg/junit/rules/ExpectedException;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public handleAssumptionViolatedExceptions()Lorg/junit/rules/ExpectedException;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public reportMissingExceptionWithMessage(Ljava/lang/String;)Lorg/junit/rules/ExpectedException;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/ExpectedException;->b:Ljava/lang/String;

    return-object p0
.end method