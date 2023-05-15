/**
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
**/

#ifndef APP_MAIN_HPP
#define APP_MAIN_HPP

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// INCLUDES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// Include tetrix::core::TetrixGame
#ifndef TETRIX_CORE_GAME_HPP
    #include <tetrix/core/game/TetrixGame.hpp>
#endif /// !TETRIX_CORE_GAME_HPP

// Include STL iostream
#include <iostream>

// Include hex::core::mutex
#ifndef HEX_CORE_CFG_MUTEX_HPP
    #include <hex/core/cfg/hex_mutex.hpp>
#endif /// !HEX_CORE_CFG_MUTEX_HPP

// Include hex::ecs
#ifndef HEX_ECS_HPP
    #include <hex/core/ecs/ECS.hpp>
#endif /// !HEX_ECS_HPP

#include <hex/core/collections/IDStorage.hpp>

// Include hex::core::SharedPointer
#ifndef HEX_CORE_SHARED_POINTER_HPP
    #include <hex/core/memory/SharedPointer.hpp>
#endif /// !HEX_CORE_SHARED_POINTER_HPP

// Include hex::core::MemoryManager
#ifndef HEX_CORE_MEMORY_MANAGER_HPP
    #include <hex/core/memory/MemoryManager.hpp>
#endif /// !HEX_CORE_MEMORY_MANAGER_HPP

// Include hex::win::WinGraphics
#ifndef HEX_WIN_GRAPHICS_HPP
    #include <hex/windows/graphics/WinGraphics.hpp>
#endif /// !HEX_WIN_GRAPHICS_HPP

// Include hex::gl::GLRenderer
#ifndef HEX_GL_RENDERER_HPP
    #include <hex/gl/render/GLRenderer.hpp>
#endif /// !HEX_GL_RENDERER_HPP

#ifdef HEX_LOGGING // DEBUG

// Include hex::core::cfg::debug
#ifndef HEX_CORE_CFG_DEBUG_HPP
    #include <hex/core/cfg/hex_debug.hpp>
#endif /// !HEX_CORE_CFG_DEBUG_HPP

// Include hex::win::WinConsoleLogger
#ifndef HEX_WIN_CONSOLE_LOGGER_HPP
    #include <hex/windows/metrics/WinConsoleLogger.hpp>
#endif /// !HEX_WIN_CONSOLE_LOGGER_HPP

#endif // DEBUG

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// ALIASES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

static constexpr const int APP_OK = 0;

// = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

#endif /// !APP_MAIN_HPP
