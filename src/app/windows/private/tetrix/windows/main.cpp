/**
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
**/

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// INCLUDES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// HEADER
#ifndef APP_MAIN_HPP
    #include <tetrix/windows/main.hpp>
#endif /// !APP_MAIN_HPP

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// MAIN
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

void Start()
{
#ifdef HEX_LOGGING // LOG
    hex::win::WinConsoleLogger::Initialize();

    hexLog::Info("main::Start");
#endif // LOG

    // Guarded-Block
    try
    {
        hexMemory::Initialize();

        hexECS::Initialize();

        hexWinGraphics::Initialize();

        hexGLRenderer::Initialize();

        tetrixGame::Initialize();

        auto game(hexApp::getInstance());
        tetrixGame* const tetrix( static_cast<tetrixGame*>(game.get()) );

        if (!tetrix->Start())
        {
#ifdef HEX_LOGGING // LOG
            hexLog::Error("main::Start: failed to start game");
#endif // LOG

            return;
        }

        auto graphics(hexGraphics::getInstance());
        hexWinGraphics* const winGraphics(static_cast<hexWinGraphics*>(graphics.get()));
        winGraphics->Loop();
    }
#ifdef HEX_LOGGING // LOG
    catch (const std::exception& _exception)
    {
        std::string logMsg("main::Start: ");
        logMsg += _exception.what();
        hexLog::Error(logMsg.c_str());
    }
#endif // LOG
    catch (...)
    {
#ifdef HEX_LOGGING // LOG
        std::string logMsg("main::Start: unknown error");
        hexLog::Error(logMsg.c_str());
#endif // LOG

        // void
    }

}

void Stop()
{
#ifdef HEX_LOGGING // LOG
    hexLog::Info("main::Stop");
#endif // LOG

    // Guarded-Block
    try
    {

        hexApp::Terminate();

        hexRenderer::Terminate();

        hexGraphics::Terminate();

        hexECS::Terminate();

        hexMemory::Terminate();

    }
#ifdef HEX_LOGGING // LOG
    catch (const std::exception& _exception)
    {
        std::string logMsg("main::Stop: ");
        logMsg += _exception.what();
        hexLog::Error(logMsg.c_str());
    }
#endif // LOG
    catch (...)
    {
#ifdef HEX_LOGGING // LOG
        std::string logMsg("main::Stop: unknown error");
        hexLog::Error(logMsg.c_str());
#endif // LOG

        // void
    }

#if HEX_LOGGING // LOG
    hexLog::Terminate();
#endif // LOG

}

int main()
{
    Start();

    Stop();

    return APP_OK;
}

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
